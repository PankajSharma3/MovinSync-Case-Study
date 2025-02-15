#include "OfflineMode.h"
#include <iostream>
using namespace std;

void OfflineMode::simulateOfflineBooking(string user, string type, string destination) {
    try {
        if (user.empty() || type.empty() || destination.empty()) {
            throw invalid_argument("Invalid input parameters");
        }
        cout << "\n=== Offline mode: Ride booked for " << user << " ===\n";
        cout << "Type: " << type << ", Destination: " << destination << "\n";
        cout << "Data will sync when online.\n";
    } catch (const exception& e) {
        cerr << "Error in offline booking: " << e.what() << endl;
    }
}