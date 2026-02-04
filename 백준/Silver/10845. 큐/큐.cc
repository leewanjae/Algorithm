#include <iostream>
#include <queue>

using namespace std;

int main()
{
    ios_base::sync_with_stdio(0);
    cin.tie(0);
    
    queue<int> q;

    int n;
    cin >> n;
    
    while(n--) {
        string input;
        cin >> input;
        
        if(input == "push") {
            int add;
            cin >> add;
            q.push(add);
            
        } else if(input == "front") {
            if(q.empty())
                cout << -1 << "\n";
            else
                cout << q.front() << "\n";
        } else if(input == "back") {
            if(q.empty())
                cout << -1 << "\n";
            else
                cout << q.back() << "\n";
        } else if(input == "pop") {
            if(q.empty()) {
                cout << -1 << "\n";
            } else {
                cout << q.front() << "\n";
                q.pop();
            }
        } else if(input == "size") {
            cout << q.size() << "\n";
        } else if(input == "empty") {
            if(q.empty())
                cout << 1 << "\n";
            else
                cout << 0 << "\n";
        }
    }
    return 0;
}
