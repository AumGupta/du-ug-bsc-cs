#include "bits/stdc++.h"
using namespace std;

int parity_check(int n, int i, int code[])
{
    int p = 0, k;
    for (int j = i; j <= n; j = k + i)
    {
        for (k = j; k < j + i && k <= n; k++)
        {
            if (code[k] == 1)
                p++;
        }
    }
    if (p % 2 == 0)
        return 0;
    else
        return 1;
}

void hamming(int data[], int size)
{
    int r = 0, m = 0, n, j = 0, p;
    while ((r + size + 1) > (pow(2, r)))
        r++;
    n = size + r;
    int code[n];
    for (int i = 1; i <= n; i++)
    {
        if (i == pow(2, m) && m <= r)
        {
            code[i] = 0;
            m++;
        }
        else
        {
            code[i] = data[j];
            j++;
        }
    }
    m = 0;
    for (int i = 1; i <= n; i++)
    {
        if (i == pow(2, m) && m <= r)
        {
            p = parity_check(n, i, code);
            code[i] = p;
            m++;
        }
    }
    cout << " The hamming code word is : ";
    for (int i = 1; i <= n; i++)
        cout << code[i] << " ";
}
int main()
{
    int size;

    cout << " Enter the size of data : ";
    cin >> size;
    int data[size];
    cout << " Enter  data(space separated) : ";
    for (int i = 0; i < size; i++)
        cin >> data[i];
    hamming(data, size);

    return 0;
}
