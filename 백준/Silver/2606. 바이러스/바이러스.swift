import Foundation

let computer = Int(readLine()!)!
let connect = Int(readLine()!)!

var graph = [[Int]](repeating: [], count: computer + 1)
var visited = [Bool](repeating: false, count: computer + 1)
var count = 0

for _ in 0..<connect {
    let line = readLine()!.split(separator: " ").map{Int(String($0))!}
    graph[line[0]].append(line[1])
    graph[line[1]].append(line[0])
}

func dfs(_ node: Int) {
    visited[node] = true
    
    
    for i in graph[node] {
        if !visited[i] {
            dfs(i)
            count += 1
        }
    }
}

dfs(1)
print(count)
