#include <iostream>
#include <stack>

using namespace std;

int main()
{
    string s;
    
    while(getline(cin, s))
    {
        if(s==".") break;
        
        stack<char> stack;
        bool isValid = true;
        
        for(auto c: s)
        {
            if(c=='(')
            {
                stack.push(c);
            }
            else if(c=='[')
            {
                stack.push(c);
            }
            
            if(c==')')
            {
                if(!stack.empty()&&stack.top() == '(')
                {
                    stack.pop();
                } else {
                    isValid = false;
                }
            } else if(c==']')
            {
                if(!stack.empty()&&stack.top() == '[')
                {
                    stack.pop();
                } else {
                    isValid = false;
                }
            }
        }
        if(isValid && stack.empty())
        {
            cout << "yes" << "\n";
        } else {
            cout << "no" << "\n";
        }
    }
    return 0;
}
