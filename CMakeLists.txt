# Minimum CMake version required
cmake_minimum_required(VERSION 3.10)

# Project name and version
project(ParkAndRideApp VERSION 1.0 LANGUAGES CXX)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Include directories
include_directories(${PROJECT_SOURCE_DIR}/include)

# Source files
set(SOURCES
    src/ParkingSlot.cpp
    src/User.cpp
    src/ParkingLot.cpp
    src/RideService.cpp
    src/Pricing.cpp
    src/OfflineMode.cpp
    src/FileHandling.cpp
    src/main.cpp
)

# Add executable
add_executable(ParkAndRideApp ${SOURCES})

# Install target (optional)
install(TARGETS ParkAndRideApp DESTINATION bin)