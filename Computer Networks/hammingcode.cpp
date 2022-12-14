#include <iostream>
#include <cmath>
using namespace std;

int main(){
    int m;
    cout<<"Enter length of Message: ";
    cin>>m;
    int msg[m] = {};
    cout<<"Enter Message Bits (Separated by space): ";
    for (int i = 0; i<m; i++){
        cin>>msg[i];
    }

    int r = 0;
    while (true)
    {
        if (pow(2,r) >= m+r+1){
            break;
        }
        r++;
    }

    int n = m+r;
    cout<<"m = "<<m<<"\nr = "<<r<<"\nn = "<<n<<endl;
    
    int parity;
    cout<<"\n\t1. Even Parity\n\t2. Odd Parity\nEnter your choice (1,2): ";
    cin>>parity;
    
    int j = 0, counter = 0;
    for (int i = 0; i<r; i++){
        j = pow(2,i);
        
    }

    if (parity == 1){
        
    } else if (parity == 2){
        
    } else {
        cout<<"Error: Please chose correct parity.";
    }
    
    
    int codeWord[n] = {};
    int j = 0;
    for(int i = 1; i <=n; i++){
        if (ceil(log2(i)) == floor(log2(i))){
            codeWord[i] = 8;
        }
        else{
            codeWord[i] = msg[j];
            j++;
        }
    }
    
    for (int i = 1; i <=n; i++){
        cout<<endl<<codeWord[i];
    }
    return 0;
}