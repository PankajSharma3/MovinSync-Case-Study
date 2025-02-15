#ifndef PARKINGSLOT_H
#define PARKINGSLOT_H

#include <string>
#include <ctime>

class ParkingSlot {
public:
    std::string slotId;
    std::string username;
    bool isOccupied;
    time_t bookedAt;
    std::string licensePlate;
    std::string rfidTag;
    std::string reservationType; // New field for reservation type
    time_t startDate;            // Start date of reservation
    time_t endDate;              // End date of reservation

    ParkingSlot();
    ParkingSlot(std::string slotId);

    std::string getBookingTime() const;
    std::string getFormattedDate(time_t date) const;
};

#endif