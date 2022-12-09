#include<iostream>
#include<exception>

using namespace std;

class StackEmpty : public exception {};
class StackFull : public exception  {};


template<typename var>
class ArrayStack {
    enum {DEF_CAPACITY = 100};
public:
    ArrayStack(int cap = DEF_CAPACITY);
    ArrayStack(const ArrayStack<var> &as);
    int size() const;
    bool isEmpty() const;
    const var& top() const;
    void push(const var& e);
    void pop();
    void display() const;
    void clear();
private:
    var* S;
    int capacity;
    int t;
};



template<typename var> ArrayStack<var>::ArrayStack(int cap):S(new var[cap]), capacity(cap), t(-1){}

template<typename var> ArrayStack<var>::ArrayStack(const ArrayStack<var> &as):S(as.S), capacity(as.capacity), t(as.t){}

template<typename var> int ArrayStack<var>::size() const {
    return t+1 ;
}

template<typename var> bool ArrayStack<var>::isEmpty() const{
    return t<0;
}

template<typename var> const var& ArrayStack<var>::top() const{
    if (isEmpty()){
        cerr<<endl<<"ERROR: Top of empty stack.\n";
    }
    return S[t];
}

template<typename var> void ArrayStack<var>::push(const var& e){
    if (size() == capacity) {
        cerr<<endl<<"ERROR: Push to full stack\n";
    } else {
        S[++t] = e;
    }
}

template<typename var> void ArrayStack<var>::pop(){
    if (isEmpty()){
        cerr<<endl<<"ERROR: Stack empty.\n";
    } else --t;
}

template<typename var> void ArrayStack<var>::display() const{
    cout<<"\nSTACK:\n";
    for (int i = size()-1; i>=0; i--){
        cout<<S[i]<<'\n';
    }
}

template<typename var> void ArrayStack<var>::clear() {
    delete[] S;
    t = -1;
    S = new var[DEF_CAPACITY];
}

int main(){
    ArrayStack<int> stack(10);
    int c;

    bool run = true;
    do{
        cout<<"\n\t1. DISPLAY\n\t2. PUSH\n\t3. POP\n\t4. CLEAR\n\t5. SIZE\n\t6. TOP\n\t7. EXIT\nENTER YOUR CHOICE: ";
        cin>>c;
        switch (c)
        {
        case 1:
            stack.display();
            break;
        case 2:
            cout<<"\nENTER ELEMENT TO BE PUSHED: ";
            int e;
            cin>>e;
            stack.push(e);
            break;
        case 3:
            stack.pop();
            break;
        case 4:
            stack.clear();
            break;
        case 5:
            cout<<stack.size();
            break;
        case 6:
            cout<<stack.top();
            break;
        case 7:
            run = false;
            break;
        default:
            cerr<<"\nERROR: Please chose from (1-7) only.";
            run = false;
            break;
        }
    } while(run);     
    return 0;
}