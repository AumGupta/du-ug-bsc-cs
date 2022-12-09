/* INFIX TO POSTFIX
 * 
 * Scan the Infix expression left to right
 * 
 * If the character x is an operand
 *      Output the character into the Postfix Expression
 * 
 * If the character x is a left or right parenthesis
 *      If the character is “(“
 *          Push it into the stack
 *      if the character is “)”
 *          Repeatedly pop and output all the operators/characters until “(“ is popped
 *          from the stack.
 * 
 * If the character x is a is a regular operator
 * 
 *      Step 1: Check the character y currently at the top of the stack.
 *      Step 2: If Stack is empty or y=‘(‘ or y is an operator of lower precedence
 *      than x, then push x into stack.
 *      Step 3: If y is an operator of higher or equal precedence than x, then pop
 *      and output y and push x into the stack.
 * 
 * When all characters in infix expression are processed, 
 * repeatedly pop the character(s) from the stack and 
 * output them until the stack is empty.
 * 
 * Program by Om Gupta (214047)
 */


#include<iostream>
#include<C:\Users\aaumg\Files\Programming\C++\Data Structures\Stacks\ArrayStack.cpp>

bool isOperand(char c){
    return ((c>='0' &&  c<='9')||(c>='A' &&  c<='Z')||(c>='a' &&  c<='z') || c==' ');
}

int precedence(char c){
    switch (c){
    case '+':
        return 1;
    case '-':
        return 1;
    case '*':
        return 2;
    case '/':
        return 2;
    case '^':
        return 3;
    default:
        break;
    }
    return -1;
}

std::string infixToPostfix(std::string exp){
    ArrayStack<char> stack; 
    std::string postfixExp = "";
    for(int i = 0; i<exp.length(); i++){
        char c = exp[i];
        if(isOperand(c)){
            postfixExp+=c;
        }
        else if (c == '('){
            stack.push(c);
        }
        else if (c == ')'){
            while(stack.top() != '('){
                postfixExp+=stack.pop();
            }
            stack.pop();// For poping out '(' from stack
        }
        else{
            char top = stack.top();
            if (precedence(top)<precedence(c) || stack.empty() || top == '('){
                stack.push(c);
            }
            else{
                postfixExp+=stack.pop();
                stack.push(c);
            }
        }
    }
    while (!stack.empty()){
        postfixExp+=stack.pop();
    }
    return postfixExp;
}

int main(){
    std::string exp;
    std::cout<< "Enter the Infix expression: ";
    std::getline(std::cin, exp);
    std::cout<<"Postfix Expression: "<<infixToPostfix(exp);
    return 0;
}