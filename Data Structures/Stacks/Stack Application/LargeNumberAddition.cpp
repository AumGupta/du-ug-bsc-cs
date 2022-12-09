/* 
 * 
 * 
 * Program by Om Gupta (214047)
 */

#include<iostream>
#include<C:\Users\aaumg\Files\Programming\C++\Data Structures\Stacks\ArrayStack.cpp>


std::string add(std::string num1, std::string num2){
    unsigned int len1 = num1.length();
    unsigned int len2 = num2.length();
    unsigned int maxLen = len1>len2 ? len1 : len2;

    ArrayStack stackNum1(len1);
    ArrayStack stackNum2(len2);
    ArrayStack resultStack(maxLen+1);

    for (int i = 0; i<len1; stackNum1.push(num1[i++]-'0'));
    for (int i = 0; i<len2; stackNum2.push(num2[i++]-'0'));

    int sum = 0,a,b;
    while(!stackNum1.empty() || !stackNum2.empty()){
        a = !stackNum1.empty() ? stackNum1.pop() : 0; 
        b = !stackNum2.empty() ? stackNum2.pop() : 0; 

        sum = sum+a+b;
        if (sum >= 10){ 
            resultStack.push(sum-10); // "sum-10" is done to get the unit digit as sum of two 1-digit number can be maximum 9+9=18
            sum = 1;
        }else{
            resultStack.push(sum);
            sum = 0;
        }
    }
    // if sum remains 1 push it into result stack 
    if (sum) resultStack.push(sum);

    std::string result;
    while (!resultStack.empty()) result += resultStack.pop() + '0';
    return result;
}

// Driver code
int main(){
    std::string number1, number2;
    std::cout<<"ENTER FIRST NUMBER  = ";
    std::cin>>number1;
    std::cout<<"ENTER SECOND NUMBER = ";
    std::cin>>number2;
    std::cout<<"                SUM = "<<add(number1, number2);
    return 0;
}