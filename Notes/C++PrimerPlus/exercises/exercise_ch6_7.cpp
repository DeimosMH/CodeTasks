#include <iostream>
#include <cstring>

int main(){
    using namespace std;
    char cInput[100];
    int iCounter{};

    cout << "\nEnter words (q to quit):\n";

    do
    {
        cin >> cInput;
        ++iCounter;
    } while (strcmp(cInput, "q"));
    cout << "\nYou entered " << iCounter << " words.\n";

    return 0;
}