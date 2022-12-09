/* 
 * 
 * 
 * Program by Om Gupta (214047)
 */


#include<iostream>
#include<C:\Users\aaumg\Files\Programming\C++\Data Structures\Stacks\ArrayStack.cpp>
using namespace std;

int main(){
    ArrayStack s1;
    int n,e;
    cout<<"ENTER NUMBER OF ELEMENTS: ";
    cin>>n;
    for (int i = 1; i<n+1; i++){
        cout<<" ELEMENT "<<i<<": ";
        cin>>e;
        s1.push(e);
    }
    cout<<"ORIGINAL STACK:\n";
    s1.display();

    ArrayStack s2;
    while(!s1.empty()) s2.push(s1.pop());
    cout<<"REVERSED STACK:\n";
    s2.display();
    return 0;
}