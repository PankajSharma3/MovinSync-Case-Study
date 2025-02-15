#include "FileHandling.h"
#include <fstream>
#include <iostream>
using namespace std;

void saveToFile(const string& filename, const string& data) {
    ofstream file(filename, ios::app);
    if (file.is_open()) {
        file << data << endl;
        file.close();
    } else {
        cerr << "Failed to open file: " << filename << endl;
    }
}

vector<string> loadFromFile(const string& filename) {
    vector<string> data;
    ifstream file(filename);
    if (file.is_open()) {
        string line;
        while (getline(file, line)) {
            data.push_back(line);
        }
        file.close();
    } else {
        cerr << "Failed to open file: " << filename << endl;
    }
    return data;
}