/* 
 * Q. Design template classes such that they support the
 * following statements:
 * Rupee <float> r1, r2;
 * Dollar <float> d1, d2;
 * d1 = r2; // converts rupee to dollar
 * r1 = d2; //converts dollar to rupee
 * 
 * Write a complete program which does such conversions
 * according to the world market value
 * 
 * Program by Om Gupta (214047)
 */


#include<iostream>
#define USD 79.71
using namespace std;


template <class var>
class Rupee;

template <class var >
class Dollar{
    private:
        var value;
    public:
        Dollar(){
            value = 0;
        }
        Dollar(var value){
            this->value = value;
        }

        void operator=(Rupee<var> &r){
            value = r.getValue()/USD;
        }
        
        void showVal(){
            cout<<value<<endl;
        }

        var getValue(){
            return value;
        }
};


template <class var >
class Rupee{
    private:
        var value;
    public:
        Rupee(){
            value = 0;
        }
        Rupee(var value){
            this->value = value;
        }

        void operator=(Dollar<var> &d){
            value = d.getValue()*USD;
        }

        void showVal(){
            cout<<value<<endl;
        }

        var getValue(){
            return value;
        }
};


int main(){
    Rupee<float> r1,r2(79.71);
    Dollar<float> d1, d2(100);
    r1 = d2;
    d1 = r2;

    cout<<"d2 = ";
    d2.showVal();
    cout<<"r1 = ";
    r1.showVal();
    cout<<endl<<"r2 = ";
    r2.showVal();
    cout<<"d1 = ";
    d1.showVal();
    return 0;
}


// d2 = 100
// r1 = 7971

// r2 = 79.71
// d1 = 1