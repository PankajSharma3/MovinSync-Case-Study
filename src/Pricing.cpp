#include "Pricing.h"
#include <ctime>
#include <iostream>
using namespace std;

// Get parking price based on peak hours
double Pricing::getParkingPrice(bool isPeak) {
    try {
        return isPeak ? 15.0 : 10.0; // Higher price during peak hours
    } catch (const exception& e) {
        cerr << "Error in pricing calculation: " << e.what() << endl;
        return 0.0;
    }
}

// Get ride price based on peak hours and shared status
double Pricing::getRidePrice(bool isPeak, bool isShared) {
    try {
        double basePrice = isPeak ? 20.0 : 15.0; // Base price during peak or off-peak hours
        return isShared ? basePrice * 0.75 : basePrice; // Discount for shared rides
    } catch (const exception& e) {
        cerr << "Error in pricing calculation: " << e.what() << endl;
        return 0.0;
    }
}

// Check if the current time is peak hours
bool Pricing::isPeakHour() {
    try {
        time_t now = time(0);
        tm* localTime = localtime(&now);
        int hour = localTime->tm_hour;
        return (hour >= 7 && hour <= 10) || (hour >= 17 && hour <= 20); // Peak hours: 7-10 AM and 5-8 PM
    } catch (const exception& e) {
        cerr << "Error in peak hour calculation: " << e.what() << endl;
        return false;
    }
}