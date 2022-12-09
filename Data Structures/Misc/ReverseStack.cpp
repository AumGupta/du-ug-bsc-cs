#include<bits/stdc++.h>
#include "stack-demo.cpp"
using namespace std;

int main(){
    ArrayStack<int> s;
    ArrayStack<int> s_rev;
    int n;
    cout<<"Enter the number of elements: ";
    cin>>n;
    for(int i=0;i<n;i++){
        int x;
        cin>>x;
        s.push(x);
    }
    cout<<"Before reversing: ";
    while(!s.empty()){
        int r=s.pop();
        s_rev.push(r);
        cout<<r<<" ";
    }
    cout<<endl;
    cout<<"After reversing: ";
    while(!s_rev.empty()){
        cout<<s_rev.pop()<<" ";
    }
    return 0;
}