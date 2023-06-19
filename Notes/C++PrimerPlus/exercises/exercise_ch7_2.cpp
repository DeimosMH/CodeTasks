#include <iostream>
using namespace std;

int fnInput(double *pdScores, int iLength){
    cout << "\nEnter 10 golf scores (`q` to quit):\n#1 Score: ";

    int i{};
    while(cin >> pdScores[i] && i < iLength-1)
        cout << "#" << (++i + 1) << " Score: ";

    return i;
}

void fnCalculation(){

}

void fnDisplay(){
    cout << "\nScores: ";
    for (int j{}; j <= iNumEl; ++j)
        cout << dScores[j] << ", ";

    cout << "\nAverage: " << dSum / iNumEl << endl;
}


int main(){
    const int iArrayLength{10}; 
    double dScores[iArrayLength]{};
    double dSum{};
    int iNumEl{};

    iNumEl = fnInput(dScores, iArrayLength);

    return 0;
}