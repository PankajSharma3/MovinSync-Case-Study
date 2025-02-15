#include "User.h"
#include <iostream>
using namespace std;

User::User() : username(""), password(""), isAuthenticated(false) {}
User::User(string u, string p) : username(u), password(p), isAuthenticated(false) {}

bool User::login(string u, string p) {
    try {
        if (u.empty() || p.empty()) {
            throw invalid_argument("Username or password cannot be empty!");
        }
        if (u == username && p == password) {
            isAuthenticated = true;
            cout << "\n=== Login successful! Welcome, " << username << ". ===\n";
            return true;
        }
        throw runtime_error("Invalid credentials!");
    } catch (const exception& e) {
        logError(e.what());
        cout << "Error: " << e.what() << endl;
        return false;
    }
}

void User::logout() {
    try {
        if (!isAuthenticated) {
            throw runtime_error("User is not logged in!");
        }
        isAuthenticated = false;
        cout << "\n=== Logout successful! Goodbye, " << username << ". ===\n";
    } catch (const exception& e) {
        logError(e.what());
        cout << "Error: " << e.what() << endl;
    }
}

void User::logError(const string& message) {
    saveToFile("error_log.txt", message);
}