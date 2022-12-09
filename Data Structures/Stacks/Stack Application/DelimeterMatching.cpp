/* 
 * 
 * 
 * Program by Om Gupta (214047)
 */


#include<iostream>
#include<C:\Users\aaumg\Files\Programming\C++\Data Structures\Stacks\ArrayStack.cpp>
#include<fstream>

bool isOpenDelimeter(char c){
    return (c == '(' || c == '[' || c == '{');
}

bool isCloseDelimeter(char c){
    return (c == ')' || c == ']' || c == '}');
}


bool matchDelimeter(std::string fileName){
    std::ifstream fin;
    fin.open(fileName);
    char c;
    ArrayStack<char> stack;
    while (fin.get(c)){
        if ( isOpenDelimeter(c) ){
            stack.push(c);
        }
        // NOTE: Delimeter Matching for only those comments with no * and / inside
        else if (c == '/'){
            fin.get(c);
            if (c == '*'){
                while(fin.get(c)){
                    if (c == '*'){
                        fin.get(c);
                        if (c == '/') break;
                        else return false;
                    }
                }
            }
        }
        else if ( isCloseDelimeter(c) ){
            // if (stack.empty()) return false; // For cheking extra closing delimeters

            unsigned int diff = c - stack.pop();
            /* Why diff ? 🤔
             * 
             * since,    ( = 40, [ = 91, { = 123
             *           ) = 41, ] = 93, } = 125
             * Hence, diff =  1,      2,       2
             * 
             * Therefore, For correctly matched delimeter
             *            difference can be either 1 or 2
             */
            if (diff < 3){
                continue;
            } else return false; 
        }
    }
    fin.close();
    return stack.empty();
}

int main(){
    matchDelimeter("Delimeter_test_file.txt")?std::cout<<"ALL Delimeters Matched":std::cout<<"Delimeters NOT matched";
    return 0;
}
