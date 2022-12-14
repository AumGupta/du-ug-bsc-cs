#include <iostream>
#include <cstdlib>
#include <ctime>

using namespace std;

void transmission(int &i, int &N, int &tf, int &tt)
{
    while (i <= tf)
    {
        int z = 0;
        for (int k = i; k < i + N && k <= tf; k++)
        {
            cout << "Sending Frame " << k << "..." << endl;
            tt++;
        }
        for (int k = i; k < i + N && k <= tf; k++)
        {
            int f = rand() % 2;
            if (!f)
            {
                cout << "Acknowledgment for Frame " << k << "..." << endl;
                z++;
            }
            else
            {
                cout << "Frame Number : " << k << " Not Received" << endl;
                cout << "Retransmitting Window..." << endl;
                break;
            }
        }
        cout << "\n";
        i = i + z;
    }
}
int main()
{
    int tf, N, tt = 0;
    srand(time(NULL));
    cout << "Enter total number of frames : ";
    cin >> tf;
    cout << "Enter the Window Size : ";
    cin >> N;
    cout << "\n\n";
    int i = 1;
    transmission(i, N, tf, tt);
    cout << "Total number of frames which were sent and resent are : " << tt << endl;
    return 0;
}
