#include<iostream>
using namespace std;

template <class T>
T sum(T array[], int startIndex, int stopIndex, T initialVal = 0){
    T sum = initialVal;
    for (int i = startIndex; i<=stopIndex; i++){
        sum+=array[i];
    }
    return sum;
}

int main(){
    float arr[] = {2.5,3.5,4.5};
    cout<<sum <float> (arr, 0, 2, 1.5); //output = 12
    return 0;
}
