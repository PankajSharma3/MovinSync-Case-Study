#include "ParkingLot.h"
#include <iostream>
#include <stdexcept>

// ParkingLot constructor
ParkingLot::ParkingLot(int size) {
    try {
        if (size <= 0) {
            throw std::invalid_argument("Parking lot size must be greater than 0!");
        }

        // Load existing slots from file (if any)
        loadParkingSlots();

        // If the loaded slots are fewer than the requested size, add new slots
        if (slots.size() < size) {
            for (int i = slots.size(); i < size; i++) {
                std::string slotId = std::to_string(i + 1);
                slots.push_back(ParkingSlot(slotId));
                availableSlots.push(slotId);
            }
        } else if (slots.size() > size) {
            // If the loaded slots are more than the requested size, truncate the list
            slots.resize(size);
            // Rebuild the availableSlots queue
            availableSlots = std::queue<std::string>(); // Clear the queue
            for (const auto& slot : slots) {
                if (!slot.isOccupied) {
                    availableSlots.push(slot.slotId);
                }
            }
        }

        std::cout << "Parking lot initialized with " << size << " slots.\n";
    } catch (const std::exception& e) {
        logError(e.what());
        std::cout << "Error: " << e.what() << std::endl;
    }
}

// ParkingLot destructor
ParkingLot::~ParkingLot() {
    saveParkingSlots();
}

// Book a parking slot with reservation type, start date, and end date
int ParkingLot::bookSlot(std::string username, std::string licensePlate, std::string rfidTag, std::string reservationType, time_t startDate, time_t endDate) {
    try {
        if (!availableSlots.empty()) {
            std::string slotId = availableSlots.front();
            availableSlots.pop();
            for (auto& slot : slots) {
                if (slot.slotId == slotId) {
                    slot.username = username;
                    slot.isOccupied = true;
                    slot.bookedAt = time(0);
                    slot.licensePlate = licensePlate;
                    slot.rfidTag = rfidTag;
                    slot.reservationType = reservationType;
                    slot.startDate = startDate;
                    slot.endDate = endDate;
                    std::cout << "\n=== Parking slot " << slot.slotId << " booked successfully by user " << username << "! ===\n";
                    generateTicketTable(slot); // Generate ticket in table format
                    saveParkingSlots();
                    return 1; // Success
                }
            }
        } else {
            throw std::runtime_error("No parking slots available!");
        }
    } catch (const std::exception& e) {
        logError(e.what());
        std::cout << "Error: " << e.what() << std::endl;
        return -1; // Failure
    }
    return -1; // Failure
}

// Cancel a parking slot
void ParkingLot::cancelSlot(std::string slotId, std::string username) {
    try {
        for (auto& slot : slots) {
            if (slot.slotId == slotId && slot.isOccupied) {
                // Check if the username matches the one who booked the slot
                if (slot.username == username) {
                    slot.isOccupied = false;
                    slot.username = "";
                    slot.licensePlate = "";
                    slot.rfidTag = "";
                    slot.reservationType = "";
                    slot.startDate = 0;
                    slot.endDate = 0;
                    availableSlots.push(slot.slotId);
                    std::cout << "\n=== Parking slot " << slot.slotId << " canceled successfully by user " << username << "! ===\n";
                    saveParkingSlots();
                    return;
                } else {
                    throw std::runtime_error("You are not authorized to cancel this booking!");
                }
            }
        }
        throw std::runtime_error("No booking found for the provided slot ID!");
    } catch (const std::exception& e) {
        logError(e.what());
        std::cout << "Error: " << e.what() << std::endl;
    }
}

// Auto-cancel slots for no-shows
void ParkingLot::autoCancelNoShows() {
    try {
        time_t now = time(0);
        for (auto& slot : slots) {
            if (slot.isOccupied && difftime(now, slot.bookedAt) > 1800) { // 30-minute grace period
                slot.isOccupied = false;
                slot.username = "";
                slot.licensePlate = "";
                slot.rfidTag = "";
                slot.reservationType = "";
                slot.startDate = 0;
                slot.endDate = 0;
                availableSlots.push(slot.slotId);
                std::cout << "\n=== Slot " << slot.slotId << " auto-canceled due to no-show. ===\n";
            }
        }
        saveParkingSlots();
    } catch (const std::exception& e) {
        logError(e.what());
        std::cout << "Error: " << e.what() << std::endl;
    }
}

// Display available parking slots
void ParkingLot::displayAvailableSlots() {
    try {
        std::cout << "\n=== Available Parking Slots ===\n";
        for (const auto& slot : slots) {
            if (!slot.isOccupied) {
                std::cout << "Slot " << slot.slotId << " is available.\n";
            }
        }
    } catch (const std::exception& e) {
        logError(e.what());
        std::cout << "Error: " << e.what() << std::endl;
    }
}

// Display booked slots for a user
void ParkingLot::displayBookedSlots(const std::string& username) {
    try {
        std::cout << "\n=== Your Booked Parking Slots ===\n";
        bool found = false;
        for (const auto& slot : slots) {
            if (slot.isOccupied && slot.username == username) {
                generateTicketTable(slot); // Generate ticket in table format
                found = true;
            }
        }
        if (!found) {
            std::cout << "No bookings found for user: " << username << "\n";
        }
    } catch (const std::exception& e) {
        logError(e.what());
        std::cout << "Error: " << e.what() << std::endl;
    }
}

// Generate a ticket in table format
void ParkingLot::generateTicketTable(const ParkingSlot& slot) const {
    std::cout << "+---------------------+---------------------+\n";
    std::cout << "| Parking Ticket      |                     |\n";
    std::cout << "+---------------------+---------------------+\n";
    std::cout << "| Slot ID             | " << std::setw(19) << slot.slotId << " |\n";
    std::cout << "| Username            | " << std::setw(19) << slot.username << " |\n";
    std::cout << "| License Plate       | " << std::setw(19) << slot.licensePlate << " |\n";
    std::cout << "| RFID Tag            | " << std::setw(19) << slot.rfidTag << " |\n";
    std::cout << "| Reservation Type    | " << std::setw(19) << slot.reservationType << " |\n";
    std::cout << "| Start Date          | " << std::setw(19) << slot.getFormattedDate(slot.startDate) << " |\n";
    std::cout << "| End Date            | " << std::setw(19) << slot.getFormattedDate(slot.endDate) << " |\n";
    std::cout << "| Booked At           | " << std::setw(19) << slot.getBookingTime() << " |\n";
    std::cout << "+---------------------+---------------------+\n";
}

// Save parking slots to a file
void ParkingLot::saveParkingSlots() {
    std::ofstream file("parking_slots.txt");
    if (file.is_open()) {
        for (const auto& slot : slots) {
            file << slot.slotId << " " << slot.username << " " << slot.isOccupied << " " << slot.bookedAt << " " << slot.licensePlate << " " << slot.rfidTag << " " << slot.reservationType << " " << slot.startDate << " " << slot.endDate << "\n";
        }
        file.close();
    } else {
        std::cerr << "Failed to save parking slots!" << std::endl;
    }
}

// Load parking slots from a file
void ParkingLot::loadParkingSlots() {
    std::ifstream file("parking_slots.txt");
    if (file.is_open()) {
        slots.clear(); // Clear existing slots
        availableSlots = std::queue<std::string>(); // Clear the available slots queue

        std::string slotId, username, licensePlate, rfidTag, reservationType;
        bool isOccupied;
        time_t bookedAt, startDate, endDate;
        while (file >> slotId >> username >> isOccupied >> bookedAt >> licensePlate >> rfidTag >> reservationType >> startDate >> endDate) {
            ParkingSlot slot(slotId);
            slot.username = username;
            slot.isOccupied = isOccupied;
            slot.bookedAt = bookedAt;
            slot.licensePlate = licensePlate;
            slot.rfidTag = rfidTag;
            slot.reservationType = reservationType;
            slot.startDate = startDate;
            slot.endDate = endDate;
            slots.push_back(slot);

            if (!isOccupied) {
                availableSlots.push(slotId);
            }
        }
        file.close();
    } else {
        std::cerr << "Failed to load parking slots! Initializing with default slots.\n";
    }
}

// Log errors to a file
void ParkingLot::logError(const std::string& message) {
    std::ofstream file("error_log.txt", std::ios::app);
    if (file.is_open()) {
        file << message << std::endl;
        file.close();
    } else {
        std::cerr << "Failed to write to error log!" << std::endl;
    }
}