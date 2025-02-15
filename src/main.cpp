#include "User.h"
#include "ParkingLot.h"
#include "RideService.h"
#include "Pricing.h"
#include "OfflineMode.h"
#include <iostream>
#include <fstream>
using namespace std;

class ParkAndRideApp {
private:
    unordered_map<string, User> users;
    ParkingLot parkingLot;
    RideService rideService;
    OfflineMode offlineMode;

public:
    ParkAndRideApp(int parkingSize) : parkingLot(parkingSize) {
        loadUsers();
        rideService.loadRides();
    }

    ~ParkAndRideApp() {
        saveUsers();
    }

    // Check if Username already taken or not
    bool isUsernameTaken(const string& username) {
        ifstream file("users.txt");
        string storedUsername, storedPassword;
        while (file >> storedUsername >> storedPassword) {
            if (storedUsername == username) {
                return true;
            }
        }
        return false;
    }

    // Register a new user
    void registerUser() {
        try {
            string username, password;
            cout << "\n=== User Registration ===\n";
            cout << "Enter a username: ";
            cin >> username;
            if (isUsernameTaken(username)) {
                cout << "Username already exists" << endl;
                return;
            }
            cout << "Enter a password: ";
            cin >> password;
            if (username.empty() || password.empty()) {
                throw invalid_argument("Username or password cannot be empty!");
            }
            users[username] = User(username, password);
            cout << "\n=== User registered successfully! ===\n";
            saveUsers();
        } catch (const exception& e) {
            cerr << "Error in user registration: " << e.what() << endl;
        }
    }

    // Login an existing user
    User* loginUser() {
        try {
            string username, password;
            cout << "\n=== User Login ===\n";
            cout << "Enter username: ";
            cin >> username;
            cout << "Enter password: ";
            cin >> password;
            if (username.empty() || password.empty()) {
                throw invalid_argument("Username or password cannot be empty!");
            }
            if (users.find(username) != users.end() && users[username].login(username, password)) {
                return &users[username];
            }
            throw runtime_error("Invalid credentials!");
        } catch (const exception& e) {
            cerr << "Error in user login: " << e.what() << endl;
            return nullptr;
        }
    }

    // Main application loop
    void run() {
        while (true) {
            try {
                cout << "\n===== Park and Ride System =====\n";
                cout << "1. Register\n";
                cout << "2. Login\n";
                cout << "3. Exit\n";
                cout << "Choose an option: ";
                int choice;
                cin >> choice;

                if (choice == 1) {
                    registerUser();
                } else if (choice == 2) {
                    User* currentUser = loginUser();
                    if (currentUser) {
                        userMenu(currentUser);
                    }
                } else if (choice == 3) {
                    cout << "\n=== Exiting the system. Goodbye! ===\n";
                    break;
                } else {
                    throw invalid_argument("Invalid choice! Please try again.");
                }
            } catch (const exception& e) {
                cerr << "Error in main application loop: " << e.what() << endl;
            }
        }
    }

    // User menu after login
    void userMenu(User* user) {
        while (true) {
            try {
                cout << "\n===== User Menu =====\n";
                cout << "1. Book Parking Slot\n";
                cout << "2. Cancel Parking Slot\n";
                cout << "3. Book Ride\n";
                cout << "4. Cancel Ride\n";
                cout << "5. View Ride Details\n";
                cout << "6. View Available Parking Slots\n";
                cout << "7. View Booked Parking Slots\n";
                cout << "8. Logout\n";
                cout << "Choose an option: ";
                int choice;
                cin >> choice;

                if (choice == 1) {
                    string licensePlate, rfidTag, reservationType;
                    int startYear, startMonth, startDay, endYear, endMonth, endDay;
                    cout << "\n=== Book Parking Slot ===\n";
                    cout << "Enter license plate: ";
                    cin >> licensePlate;
                    cout << "Enter RFID tag: ";
                    cin >> rfidTag;
                    cout << "Enter reservation type (hourly/daily/monthly/yearly): ";
                    cin >> reservationType;
                    cout << "Enter start date (YYYY MM DD): ";
                    cin >> startYear >> startMonth >> startDay;
                    cout << "Enter end date (YYYY MM DD): ";
                    cin >> endYear >> endMonth >> endDay;

                    // Convert dates to time_t
                    struct tm startTm = {0, 0, 0, startDay, startMonth - 1, startYear - 1900};
                    struct tm endTm = {0, 0, 0, endDay, endMonth - 1, endYear - 1900};
                    time_t startDate = mktime(&startTm);
                    time_t endDate = mktime(&endTm);

                    parkingLot.bookSlot(user->username, licensePlate, rfidTag, reservationType, startDate, endDate);
                } else if (choice == 2) {
                    string slotId;
                    cout << "\n=== Cancel Parking Slot ===\n";
                    cout << "Enter Slot ID to cancel: ";
                    cin >> slotId;
                    parkingLot.cancelSlot(slotId, user->username);
                } else if (choice == 3) {
                    string type, destination;
                    bool isShared;
                    cout << "\n=== Book Ride ===\n";
                    cout << "Enter ride type (Cab/Shuttle/E-Rickshaw): ";
                    cin >> type;
                    cout << "Enter destination: ";
                    cin >> destination;
                    cout << "Is this a shared ride? (1 for Yes, 0 for No): ";
                    cin >> isShared;
                    rideService.bookRide(user->username, type, destination, isShared);
                    bool isPeak = Pricing::isPeakHour();
                    double price = Pricing::getRidePrice(isPeak, isShared);
                    cout << "Current ride price: $" << price << (isPeak ? " (Peak hours)" : " (Off-peak hours)") << "\n";
                } else if (choice == 4) {
                    int rideIndex;
                    cout << "\n=== Cancel Ride ===\n";
                    cout << "Enter ride index to cancel: ";
                    cin >> rideIndex;
                    rideService.cancelRide(user->username, rideIndex - 1);
                } else if (choice == 5) {
                    rideService.displayRideDetails(user->username);
                } else if (choice == 6) {
                    parkingLot.displayAvailableSlots();
                } else if (choice == 7) {
                    parkingLot.displayBookedSlots(user->username);
                } else if (choice == 8) {
                    user->logout();
                    break;
                } else {
                    throw invalid_argument("Invalid choice! Please try again.");
                }
            } catch (const exception& e) {
                cerr << "Error in user menu: " << e.what() << endl;
            }
        }
    }

    // Save users to a file
    void saveUsers() {
        ofstream file("users.txt");
        if (file.is_open()) {
            for (const auto& user : users) {
                file << user.second.username << " " << user.second.password << "\n";
            }
            file.close();
        } else {
            cerr << "Failed to save users!" << endl;
        }
    }

    // Load users from a file
    void loadUsers() {
        ifstream file("users.txt");
        if (file.is_open()) {
            string username, password;
            while (file >> username >> password) {
                users[username] = User(username, password);
            }
            file.close();
        } else {
            cerr << "Failed to load users!" << endl;
        }
    }
};

// Main function
int main() {
    try {
        ParkAndRideApp app(10); // Initialize with 10 parking slots
        app.run();
    } catch (const exception& e) {
        cerr << "Fatal error in main function: " << e.what() << endl;
        return 1;
    }
    return 0;
}