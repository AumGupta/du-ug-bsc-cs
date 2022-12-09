/* 
 * Stack implementation using array
 * 
 * Program by Om Gupta (214047)
 */


#include<iostream>

// Exception Class
class StackException : public std::exception{};
class StackUnderflowException : public StackException {
    public:
        virtual const char* what() const noexcept{
            return "ERROR: pop on empty stack";
        }
};
class StackOverflowException : public StackException {
        virtual const char* what() const noexcept{
            return "ERROR: push on full stack";
        }
};


// ArrayStack Class
template<class T = int> class ArrayStack{
    enum{DEF_SIZE = 100};
public:
    ArrayStack(unsigned int capacity = DEF_SIZE);
    ArrayStack(const ArrayStack& obj);
    void push(T);
    T pop();
    void clear();
    const T& top() const;
    int size() const;
    bool empty() const;
    void display() const;
    ArrayStack operator= (const ArrayStack& obj){
        ArrayStack<T> tmp(obj);
        return tmp;
    };

    // Optional Methods
    void prettyPrint(std::string sep = ", ");
    int getCapacity() const;

private:
    T* stack;
    int capacity;
    int t;
};

// Constructor
template<class T> ArrayStack<T>::ArrayStack(unsigned int s):stack(new T[s]),capacity(s), t(-1){}

// Copy Constructor
template <class T> ArrayStack<T>::ArrayStack(const ArrayStack& obj):capacity(obj.capacity), t(obj.t){
    stack = new T[capacity];
    std::copy(obj.stack, obj.stack + capacity, stack);
};

// Utility Functions

/**
 * @brief Inserts `element` at top of stack
 * 
 * @tparam T 
 * @param element 
 */
template<class T> void ArrayStack<T>::push(T element){
    try{
        if(size() == capacity){
            throw StackOverflowException();
        }
        stack[++t] = element;
    }
    catch(StackException& e){
        std::cerr<<e.what()<<'\n';
    }
}

/**
 * @brief Removes and returns top most element of stack
 * 
 * @tparam T 
 * @return T 
 */
template<class T> T ArrayStack<T>::pop(){
    try{
        if(empty()){
            throw StackUnderflowException();
        }
        return stack[t--];
    }
    catch(StackException& e){
        std::cerr<<e.what()<<'\n';
    }
    return 0;
}

/**
 * @brief Deletes the stack and allocates new memory to it
 * 
 * @tparam T 
 */
template<class T> void ArrayStack<T>::clear(){
    delete[] stack;
    t = -1;
    stack = new T[capacity];
}

/**
 * @brief Checks whether stack is empty or not
 * 
 * @tparam T 
 * @return true 
 * @return false 
 */
template<class T> bool ArrayStack<T>::empty() const{
    return t<0;
}

/**
 * @brief Returns reference to the top element of stack
 * 
 * @tparam T 
 * @return const T& 
 */
template<class T> const T& ArrayStack<T>::top() const{
    try{
        if(empty()){
            throw StackUnderflowException();
        }
        return stack[t];
    }
    catch(StackException& e){
        std::cerr<<e.what()<<'\n';
    }
    return stack[t];
}

/**
 * @brief Prints the stack
 * 
 * @tparam T 
 */
template<class T> void ArrayStack<T>::display() const{
    for(int i = t; i>=0; std::cout<<stack[i--]<<'\n');
}

/**
 * @brief Returns size of the stack
 * 
 * @tparam T 
 * @return int 
 */
template<class T> int ArrayStack<T>::size() const{
    return t+1;
}


/**
 * @brief Prints stack elements separated by given string `sep` separator
 * 
 * @param string sep
 */
template<class T> void ArrayStack<T>::prettyPrint(std::string sep){
    for(int i = t; i>=0; i--){
        std::cout<<stack[i];
        if (i) std::cout<<sep;
    }
}

/**
 * @brief Returns maximum storage capacity of stack
 * 
 */
template<class T> int ArrayStack<T>::getCapacity() const{
    return capacity;
}

// // Driver Code
// int main(){
//     ArrayStack<int> stack2(10);
//     stack2.push(2);
//     stack2.push(4);
//     stack2.push(5);
//     ArrayStack<int> stack3(stack2);
//     ArrayStack<int> stack = stack3;
//     int c;
//     bool run = true;
//     do{
//         std::cout<<"\n\t1. DISPLAY\n\t2. PUSH\n\t3. POP\n\t4. CLEAR\n\t5. SIZE\n\t6. TOP\n\t7. EXIT\nENTER YOUR CHOICE: ";
//         std::cin>>c;
//         switch (c)
//         {
//         case 1:
//             stack.display();
//             break;
//         case 2:
//             std::cout<<"\nENTER ELEMENT TO BE PUSHED: ";
//             int e;
//             std::cin>>e;
//             stack.push(e);
//             break;
//         case 3:
//             stack.pop();
//             break;
//         case 4:
//             stack.clear();
//             break;
//         case 5:
//             std::cout<<stack.size();
//             break;
//         case 6:
//             std::cout<<stack.top();
//             break;
//         case 7:
//             run = false;
//             break;
//         default:
//             std::cerr<<"\nERROR: Please chose from (1-7) only.\n";
//             break;
//         }
//     } while(run); 
//     return 0;
// }