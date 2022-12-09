#include <iostream>

class StackEmpty : public std::exception {
    public:
    StackEmpty(const std::string& err){
        std::cerr<<err;
    }
};
class StackFull : public std::exception {
    public:
    StackFull(const std::string& err){
        std::cerr<<err;
    }
};

template <class var>
class ArrayStack{
    enum {DEF_CAPACITY = 100}
public:
    ArrayStack(int cap = DEF_CAPACITY);
    ~ArrayStack();
    ArrayStack(const ArrayStack& obj);
    void push(var* element) throw(StackFull);
    void pop() throw(StackEmpty);
    int size() const;
    void clear();
    bool empty() const;
    void display() const;
    const E& top() const throw(StackEmpty);
    ArrayStack operator+(const ArrayStack& obj)
private:
    var* S;
    int capacity;
    int t;
};

/**
 * @brief Construct a new Array Stack<var>:: Array Stack object
 * 
 * @tparam var 
 * @param cap 
 */
template<class var> ArrayStack<var>::ArrayStack(int cap):S(new var[cap]), capacity(cap), t(-1){}

/**
 * @brief Destroy the Array Stack<var>:: Array Stack object
 * 
 * @tparam var 
 */
template <class var> ArrayStack<var>::~ArrayStack() {}


template <class var> ArrayStack<var>::ArrayStack(const ArrayStack& obj):S(obj->stack), capacity(obj->capacity), t(obj->t) {};
