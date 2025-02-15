#ifndef PRICING_H
#define PRICING_H

class Pricing {
public:
    static double getParkingPrice(bool isPeak);
    static double getRidePrice(bool isPeak, bool isShared = false);
    static bool isPeakHour();
};

#endif