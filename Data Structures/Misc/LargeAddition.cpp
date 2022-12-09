#include<bits/stdc++.h>
#include "stack-demo.cpp"
using namespace std;

int main(){
    ArrayStack<int> s1,s2,s3;
    string n1,n2;
    cout<<"Enter two large numbers = \n";
    cin>>n1>>n2;
    for(int i=0;i<n1.length();i++) s1.push(n1[i]-48);
    for(int i=0;i<n2.length();i++) s2.push(n2[i]-48);
    int carry=0;
    while(!s1.empty()||!s2.empty()){
        int a=0,b=0;
        if(!s1.empty())
        {
            a=s1.pop();
        }
        if(!s2.empty())
        {
            b=s2.pop();
        }
        if(a+b+carry>=10)
        {
           s3.push(a+b-10+carry);
           carry=1;
        }
        else
        {
            s3.push(a+b+carry);
            carry=0;
        }
    }
    if(carry==1)
    {
        s3.push(1);
    }
    while(!s3.empty())
    {
        cout<<s3.pop();
    }
    return 0;
}