/* 
 * 
 * 
 * Program by Om Gupta (214047)
 */


#include<iostream>
#include<C:\Users\aaumg\Files\Programming\C++\Data Structures\Stacks\ArrayStack.cpp>
#include<cmath>

void postfixEvaluation(std::string exp){
    ArrayStack opStack;
    for (int i = 0; i<exp.length(); i++){
        char c = exp[i];
        if (c>='0' && c<='9'){ // If operand then push in stack
            opStack.push(c - '0');    
        }
        else{ // if Operator then perform it on operands just pushed and push back the result
            int op2 = opStack.pop();
            int op1 = opStack.pop();
            switch (c)
            {
            case '+':
                opStack.push(op1+op2);
                break;
            case '-':
                opStack.push(op1-op2);
                break;
            case '*':
                opStack.push(op1*op2);
                break;
            case '/':
                opStack.push(op1/op2);
                break;
            case '^':
                opStack.push(pow(op1,op2));
                break;   
            default:
                std::cout<<"Illegal Operation";
                exit(1);
                break;
            }
        }
    }
    std::cout<<opStack.pop();
}

int main(){
    std::cout<<"Enter Postfix expression: ";
    std::string exp;
    std::cin>>exp;
    postfixEvaluation(exp);
    return 0;
}