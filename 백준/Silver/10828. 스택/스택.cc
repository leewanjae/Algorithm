#include <iostream>
#include <stack>

using namespace std;

int main()
{
    ios_base::sync_with_stdio(0);
    cin.tie(0);
    
    stack<int> s;
    
    int n;
    cin >> n;
    
    while(n--) {
        string input;
        cin >> input;
        if (input=="push") {
            int add;
            cin >> add;
            s.push(add);
            
        } else if (input=="top") {
            if (s.empty())
                cout << -1 << "\n";
            else
                cout << s.top() << "\n";
            
        } else if (input=="pop") {
            if (s.empty()) {
                cout << -1 << "\n";
            }
            else {
                cout << s.top() << "\n";
                s.pop();
            }
        } else if (input=="empty") {
            if (s.empty()) {
                cout << 1 << "\n";
            } else {
                cout << 0 << " ";
            }
        } else if (input == "size") {
            cout << s.size() << "\n";
        }
    }
}
