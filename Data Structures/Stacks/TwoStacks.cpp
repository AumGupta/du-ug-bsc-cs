/* 
 * Two Stack in on array
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

// TwoStacks Class
template <class T = int> class TwoStacks {
    enum{DEF_SIZE = 100};
public:
    TwoStacks(int size = DEF_SIZE);
    void push1(T);
    void push2(T);
    T pop1();
    T pop2();
    void display1() const;
    void display2() const;
private:
    T* array;
    int capacity;
    int t1;
    int t2;
};

template<class T> TwoStacks<T>::TwoStacks(int s):array(new T[s]),capacity(s),t1(-1),t2(s){}

template<class T> void TwoStacks<T>::push1(T e){
    try
    {    
        if (t1<t2-1){
            array[++t1] = e;  
        }else{
            throw StackOverflowException();
        }
    }
    catch(const StackException& e){
        std::cerr << e.what() << '\n';
    }
}

template<class T> void TwoStacks<T>::push2(T e){
    try
    {    
        if (t1<t2-1){
            array[--t2] = e;  
        }else{
            throw StackOverflowException();
        }
    }
    catch(const StackException& e){
        std::cerr << e.what() << '\n';
    }
}

template<class T> T TwoStacks<T>::pop1(){
    try{
        if(t1 == -1){
            throw StackUnderflowException();
        }
        return array[t1--];
    }
    catch(StackException& e){
        std::cerr<<e.what()<<'\n';
    }
    return -1;
}

template<class T> T TwoStacks<T>::pop2(){
    try{
        if(t2 == capacity){
            throw StackUnderflowException();
        }
        return array[t2++];
    }
    catch(StackException& e){
        std::cerr<<e.what()<<'\n';
    }
    return -1;
}

template<class T> void TwoStacks<T>::display1() const{
    for(int i = 0; i<=t1; std::cout<<array[i++]<<'\n');
}

template<class T> void TwoStacks<T>::display2() const{
    for(int i = capacity-1; i>=t2; std::cout<<array[i--]<<'\n');
}

int main(){
    TwoStacks ts(10);
    for(int i = 1; i<6; ts.push1(i++));
    for(int i = 1; i<6; ts.push2(i++));
    
    ts.push2(1);
    for(int i = 1; i++<7; ts.pop1());

    std::cout<<"STACK 1\n";
    ts.display1();
    std::cout<<"STACK 2\n";
    ts.display2();
    return 0;
}