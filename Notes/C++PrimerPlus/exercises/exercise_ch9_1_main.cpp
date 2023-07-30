#include <iostream>
#include "exercise_ch9_1_golf.h"

int main(){
    golf andy; 
    
    char strFullname[40];
    int iHandicap{};

    int iPlayers{};

    // Set golf V1
    std::cout << "Enter the name and handicap\n";
    std::cin >> strFullname >> iHandicap; 
    setgolf(andy, strFullname, iHandicap);
    
    showgolf(andy);

    // Set golf V2
    // setgolf(andy, "Ann Birdfree", 24);


    // std::cout << "\nEnter the number of players: ";
    // std::cin >> iPlayers;


    // for (size_t i = 0; i < iPlayers; i++)
    // {
    //     /* code */
    // }
    

    return 0;
}
