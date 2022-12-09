#include <bits/stdc++.h>
using namespace std;

bool check(char c)
{
	return (c == '{' || c == '[' || c == '(');
}
bool checktwo(char ch, char c)
{
	return ((c == '{' && ch == '}') || (c == '[' && ch == ']') || (c == '(' && ch == ')'));
}
int main()
{
	cout << "Enter the string ";
	string s;
	cin >> s;
	bool ab = false;
	stack<char> c;
	for (int i = 0; i < s.length(); i++)
	{
		if (check(s[i]))
		{
			c.push(s[i]);
		}
		else
		{
			if (!(c.empty()) && checktwo(s[i], c.top()))
			{
				c.pop();
			}
			else
			{
				cout << "False";
				ab = true;
				break;
			}
		}
	}
	if (!(ab))
	{
		if (c.empty())
		{
			cout << "True";
		}
		else
			cout << "False";
	}
}
