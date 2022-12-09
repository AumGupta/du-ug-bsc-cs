#include<bits/stdc++.h>
#include "stack-demo.cpp"
using namespace std;

int evaluatePostfix(string exp){
    ArrayStack<int> s;
    for(int i=0; i<exp.length(); i++){
        if(exp[i] >= '0' && exp[i] <= '9'){
            s.push(exp[i] - '0');
        }
        else{
            int val1 = s.top();
            s.pop();
            int val2 = s.top();
            s.pop();
            switch(exp[i]){
                case '+':
                    s.push(val2 + val1);
                    break;
                case '-':
                    s.push(val2 - val1);
                    break;
                case '*':
                    s.push(val2 * val1);
                    break;
                case '/':
                    s.push(val2 / val1);
                    break;
            }
        }
    }
    return s.top();
}
int main(){
    string exp;
    cout<<"Enter the postfix expression: ";
    cin>>exp;
    cout<<evaluatePostfix(exp)<<endl;
    return 0;
}