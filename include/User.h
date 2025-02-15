#ifndef USER_H
#define USER_H

#include <string>
#include "FileHandling.h"
using namespace std;

class User {
public:
    string username;
    string password;
    bool isAuthenticated;

    User();
    User(string u, string p);

    bool login(string u, string p);
    void logout();
    void logError(const string& message);
};

#endif