#include<iostream>
using namespace std;

template <class var=int>
class Calculator{
    public:
        var add(var n1, var n2) {
            return n1+n2;
        }
        var sub(var n1, var n2) {
            return n1-n2;
        }
        var mul(var n1, var n2){
            return n1*n2;
        } 
        var div(var n1, var n2) {
            return n1/n2;
        }
};

int main(){
    Calculator<int> calcInt;
    Calculator<double> calcDouble;

    cout<<endl<<calcInt.mul(3,4);
    cout<<endl<<calcDouble.add(2.8,2.2);
    return 0;
}
