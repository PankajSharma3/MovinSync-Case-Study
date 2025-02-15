# Park and Ride System - Case Study Project for MOVINSYNC

## Overview

This project is a **Park and Ride System** designed as a case study for MOVINSYNC. It is a command-line-based application that allows users to register, log in, book parking slots, book rides, and manage their reservations. The system supports hourly, daily, monthly, and yearly parking reservations and provides a seamless user experience.

The project is implemented in **C++** and uses file-based storage for persistence. It is modular, extensible, and designed to handle real-world scenarios such as no-shows, peak-hour pricing, and user authentication.

---

## Features

1. **User Management**:
   - Register new users with a unique username and password.
   - Log in with existing credentials.

2. **Parking Management**:
   - Book parking slots with start and end dates.
   - Cancel booked parking slots.
   - View available and booked parking slots.
   - Auto-cancel no-show reservations after 30 minutes.

3. **Ride Management**:
   - Book rides (Cab, Shuttle, E-Rickshaw) with shared or private options.
   - Cancel booked rides.
   - View ride details and pricing.

4. **Pricing**:
   - Dynamic pricing based on peak and off-peak hours.
   - Different rates for shared and private rides.

5. **Ticket Generation**:
   - Generate and display parking tickets in a table format with all booking details.

6. **Error Handling**:
   - Robust error handling for invalid inputs, duplicate usernames, and unauthorized actions.

---

## Prerequisites

To run this project, you need:

- A C++ compiler (e.g., `g++`).
- A terminal or command-line interface.

---

## Build Command
```bash
cmake --build build
```


## How to Run the Project

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/park-and-ride-system.git
   cd park-and-ride-system
   cmake --build build
   ./build/ParkAndRideApp
   ```

## Example

1. **Clone the Repository**:
   ```bash
   ===== User Menu =====
   1. Book Parking Slot
   2. Cancel Parking Slot
   3. Book Ride
   4. Cancel Ride
   5. View Ride Details
   6. View Available Parking Slots
   7. View Booked Parking Slots
   8. Logout
   Choose an option: 1
   === Book Parking Slot ===
   Enter license plate: ABC123
   Enter RFID tag: 123456789
   Enter reservation type (hourly/daily/monthly/yearly): daily
   Enter start date (YYYY MM DD): 2023 10 01
   Enter end date (YYYY MM DD): 2023 10 02

   === Parking slot 1 booked successfully by user john_doe! ===
   +---------------------+---------------------+
   | Parking Ticket      |                     |
   +---------------------+---------------------+
   | Slot ID             | 1                   |
   | Username            | john_doe            |
   | License Plate       | ABC123              |
   | RFID Tag            | 123456789           |
   | Reservation Type    | daily               |
   | Start Date          | 2023-10-01          |
   | End Date            | 2023-10-02          |
   | Booked At           | Sun Oct  1 12:00:00 2023 |
   +---------------------+---------------------+
```
