#include <iostream>
#include <vector>
#include <list>
#include <string>

using namespace std;

int main()
{
    ios_base::sync_with_stdio(0);
    cin.tie(0);
    
    string input;
    cin >> input;

    int n;
    cin >> n;
    
    list<char> l;
    
    for(auto c: input)
        l.push_back(c);

    auto cursor = l.end();
    
    while(n--) {
        char cmd;
        cin >> cmd;
        
        if (cmd == 'P') {
            char add;
            cin >> add;
            
            l.insert(cursor, add);
        } else if (cmd == 'L') {
            if (cursor != l.begin())
                cursor--;
        } else if (cmd == 'D') {
            if (cursor != l.end())
                cursor++;
        } else if (cmd == 'B') {
            if (cursor != l.begin()) {
                cursor--;
                cursor = l.erase(cursor);
            }
        }
    }
    
    for (auto c: l)
        cout << c;
}
