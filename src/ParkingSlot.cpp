#include "ParkingSlot.h"
#include <iomanip>
#include <sstream>

// Default constructor
ParkingSlot::ParkingSlot() : slotId(""), username(""), isOccupied(false), bookedAt(0), licensePlate(""), rfidTag(""), reservationType(""), startDate(0), endDate(0) {}

// Parameterized constructor
ParkingSlot::ParkingSlot(std::string slotId) : slotId(slotId), username(""), isOccupied(false), bookedAt(0), licensePlate(""), rfidTag(""), reservationType(""), startDate(0), endDate(0) {}

// Get formatted booking time
std::string ParkingSlot::getBookingTime() const {
    if (bookedAt == 0) return "Not Booked";
    char buffer[26];
    strftime(buffer, sizeof(buffer), "%c", localtime(&bookedAt));
    return std::string(buffer);
}

// Get formatted date
std::string ParkingSlot::getFormattedDate(time_t date) const {
    if (date == 0) return "Not Set";
    char buffer[26];
    strftime(buffer, sizeof(buffer), "%Y-%m-%d", localtime(&date));
    return std::string(buffer);
}