#ifndef RIDESERVICE_H
#define RIDESERVICE_H

#include <unordered_map>
#include <vector>
#include <ctime>
#include <string>
#include "FileHandling.h"
using namespace std;

class Ride {
public:
    string type;
    string destination;
    time_t bookedAt;
    bool isShared;

    Ride();
    Ride(string t, string dest, bool shared = false);
    string getBookingTime() const;
};

class RideService {
private:
    unordered_map<string, vector<Ride>> userRides;

public:
    void bookRide(string user, string type, string destination, bool isShared = false);
    void cancelRide(string user, int rideIndex);
    void displayRideDetails(string user);
    void saveRides();
    void loadRides();
    void logError(const string& message);
};

#endif