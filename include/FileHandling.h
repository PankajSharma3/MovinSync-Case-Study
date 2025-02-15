#ifndef FILEHANDLING_H
#define FILEHANDLING_H

#include <string>
#include <vector>
using namespace std;

void saveToFile(const string& filename, const string& data);
vector<string> loadFromFile(const string& filename);

#endif