/* Question: Simulate Classful Addressing by taking the IP address (Dotted-Decimal notation) 
 * as input and print the corresponding class.
 * 
 * Program by Om Gupta (214047)
 */


#include<iostream>
using namespace std;

int main(){
    int IP_add;
    cout<<"Enter the IP Address:";
    cin>>IP_add;
    if (IP_add < 128){
        cout<<"Class A";
    } else if (IP_add < 192){
        cout<<"CLass B";
    } else if (IP_add < 224){
        cout<<"CLass C";
    } else if (IP_add < 240){
        cout<<"CLass D";
    } else if (IP_add < 256){
        cout<<"CLass E";
    } else {
        cout<<"Enter valid IP Address";
    }
    return 0;
}