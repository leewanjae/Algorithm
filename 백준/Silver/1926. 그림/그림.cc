#include <iostream>
#include <queue>

using namespace std;

int board[502][502];
bool vis[502][502];
int dx[4] = {1,0,-1,0};
int dy[4] = {0,1,0,-1};

int main()
{
    ios_base::sync_with_stdio(0);
    cin.tie(0);
    
    int n, m;
    cin >> n >> m;
    
    for(int i = 0; i < n; i++)
    {
        for(int j = 0; j < m; j++)
        {
            cin >> board[i][j];
        }
    }
    
    int mx = 0;
    int count = 0;
    
    for(int i = 0; i < n; i++)
    {
        for(int j = 0; j < m; j++)
        {
            
            if(vis[i][j] || board[i][j] == 0) continue;
            count++;
            
            queue<pair<int,int>> q;
            vis[i][j] = true;
            q.push({i,j});
            
            int area = 0;

            while(!q.empty())
            {
                area++;
                pair<int,int> current = q.front();
                q.pop();
                
                for(int i = 0; i < 4; i++)
                {
                    int nx = current.first + dx[i];
                    int ny = current.second + dy[i];
                    
                    if(nx < 0 || ny < 0 || nx >= n || ny > m) continue;
                    if(vis[nx][ny] || board[nx][ny] != 1) continue;
                    
                    vis[nx][ny] = true;
                    q.push({nx,ny});
                }
            }
            
            mx = max(mx,area);
        }
    }
    
    
    cout << count << '\n' << mx;
    return 0;
}
