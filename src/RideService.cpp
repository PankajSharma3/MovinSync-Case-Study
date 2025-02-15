#include "RideService.h"
#include <iostream>
#include <fstream>
#include <ctime>
#include <iomanip>
using namespace std;

// Ride constructor (default)
Ride::Ride() : type(""), destination(""), bookedAt(0), isShared(false) {}

// Ride constructor (parameterized)
Ride::Ride(string t, string dest, bool shared) : type(t), destination(dest), bookedAt(time(0)), isShared(shared) {}

// Get booking time as a formatted string
string Ride::getBookingTime() const {
    char buffer[26];
    strftime(buffer, sizeof(buffer), "%c", localtime(&bookedAt));
    return string(buffer);
}

// Book a ride
void RideService::bookRide(string user, string type, string destination, bool isShared) {
    try {
        if (user.empty() || type.empty() || destination.empty()) {
            throw invalid_argument("Invalid input parameters");
        }
        userRides[user].push_back(Ride(type, destination, isShared));
        cout << "\n=== Ride booked successfully! ===\n";
        cout << "Type: " << type << ", Destination: " << destination << "\n";
        saveRides();
    } catch (const exception& e) {
        logError(e.what());
        cout << "Error: " << e.what() << endl;
    }
}

// Cancel a ride
void RideService::cancelRide(string user, int rideIndex) {
    try {
        if (userRides.find(user) != userRides.end() && rideIndex >= 0 && rideIndex < userRides[user].size()) {
            userRides[user].erase(userRides[user].begin() + rideIndex);
            cout << "\n=== Ride canceled successfully! ===\n";
            saveRides();
        } else {
            throw runtime_error("Invalid ride index or no rides found for the user!");
        }
    } catch (const exception& e) {
        logError(e.what());
        cout << "Error: " << e.what() << endl;
    }
}

// Display ride details for a user
void RideService::displayRideDetails(string user) {
    try {
        if (userRides.find(user) != userRides.end() && !userRides[user].empty()) {
            for (size_t i = 0; i < userRides[user].size(); i++) {
                const Ride& ride = userRides[user][i];

                cout << "+-------------------------+-------------------------+\n";
                cout << "| Ride Ticket             |                         |\n";
                cout << "+-------------------------+-------------------------+\n";
                cout << "| Ride No.                | " << setw(23) << i + 1 << " |\n";
                cout << "| Type                    | " << setw(23) << ride.type << " |\n";
                cout << "| Destination             | " << setw(23) << ride.destination << " |\n";
                cout << "| Shared                  | " << setw(23) << (ride.isShared ? "Yes" : "No") << " |\n";
                cout << "| Booked At               | " << setw(23) << ride.getBookingTime() << " |\n";
                cout << "+-------------------------+-------------------------+\n";
            }
        } else {
            throw runtime_error("No rides found for the user!");
        }
    } catch (const exception& e) {
        logError(e.what());
        cout << "Error: " << e.what() << endl;
    }
}

// Save rides to a file
void RideService::saveRides() {
    ofstream file("rides.txt");
    if (file.is_open()) {
        for (const auto& user : userRides) {
            for (const auto& ride : user.second) {
                file << user.first << " " << ride.type << " " << ride.destination << " " << ride.bookedAt << " " << ride.isShared << "\n";
            }
        }
        file.close();
    } else {
        cerr << "Failed to save rides!" << endl;
    }
}

// Load rides from a file
void RideService::loadRides() {
    ifstream file("rides.txt");
    if (file.is_open()) {
        string user, type, destination;
        time_t bookedAt;
        bool isShared;
        while (file >> user >> type >> destination >> bookedAt >> isShared) {
            userRides[user].push_back(Ride(type, destination, isShared));
            userRides[user].back().bookedAt = bookedAt;
        }
        file.close();
    } else {
        cerr << "Failed to load rides!" << endl;
    }
}

// Log errors to a file
void RideService::logError(const string& message) {
    saveToFile("error_log.txt", message);
}