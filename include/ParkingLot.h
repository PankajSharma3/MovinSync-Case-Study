#ifndef PARKINGLOT_H
#define PARKINGLOT_H

#include "ParkingSlot.h"
#include <queue>
#include <vector>
#include <ctime>
#include <fstream>
#include <iomanip>

class ParkingLot {
private:
    std::vector<ParkingSlot> slots;
    std::queue<std::string> availableSlots;

    void saveParkingSlots();
    void loadParkingSlots();
    void logError(const std::string& message);

public:
    ParkingLot(int size);
    ~ParkingLot();

    int bookSlot(std::string username, std::string licensePlate, std::string rfidTag, std::string reservationType, time_t startDate, time_t endDate);
    void cancelSlot(std::string slotId, std::string username);
    void autoCancelNoShows();
    void displayAvailableSlots();
    void displayBookedSlots(const std::string& username);
    void generateTicketTable(const ParkingSlot& slot) const;
};

#endif