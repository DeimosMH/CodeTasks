#include <bits/stdc++.h>
#include <cstdlib>
#include <iostream>

using namespace std;

long long reverseBits(long long n)
{
    long long retVal{};

    for (int i{}; i < 32; ++i)
    {
        retVal <<= 1;

        if ((n & 1) == 1)
            retVal ^= 1;

        n >>= 1;
    }

    return retVal;
}

long long flippingBits(long long n)
{
    // Create a mask of 32 bits all set to 1
    long long mask = 4294967295;
    // long long mask = 0xFFFFFFFF;
    // equal to: 11111111111111111111111111111111 //32 bits all set to 1

    // Perform a bit flip using the bitwise XOR operator
    long long retVal = n ^ mask;
    // XOR operations:
    // 1 ^ 1 = 0
    // 1 ^ 0 = 1
    // 0 ^ 1 = 1
    // 0 ^ 0 = 0

    return retVal;
}

void printBinary(long int n) {
    for (int i = 31; i >= 0; i--) {
        if ((n & (1 << i)) != 0)
            std::cout << "1";
        else
            std::cout << "0";
    }
    std::cout << "\n";
}


int main()
{
    for (;;)
    {
        string n_temp;
        getline(cin, n_temp);

        long long n = stol(n_temp);
        printBinary(n);

        long long result = flippingBits(n);

        result = abs(result);
        cout << "dec : " << result << "\n";
        cout << "bin : ";
        printBinary(result);
        cout << "\n";

    }
    return 0;
}