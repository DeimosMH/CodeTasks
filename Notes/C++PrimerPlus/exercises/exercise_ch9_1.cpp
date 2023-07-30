#include <iostream>
#include "exercise_ch9_1_golf.h"

void setgolf(golf &g, const char *name, int hc)
{
    strcpy(g.fullname, name);
    g.handicap = hc;
}

int setgolf(golf &g)
{
    std::cout << "\nEnter the name: ";
    std::cin >> g.fullname;
    std::cout << "\nEnter the handicap: ";
    std::cin >> g.handicap;

    if (g.fullname == "")
    {
        return 0;
    }
    return 1;    
}

void handicap(golf &g, int hc)
{
    g.handicap = hc;
}

void showgolf(const golf &g)
{
    std::cout << g.fullname << std::endl;
    std::cout << g.handicap << std::endl;
}
