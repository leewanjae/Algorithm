import Foundation

var arr = [[Int]]()

for _ in 0..<9 {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

var maxV = arr.flatMap { $0 }.max()!

for i in 0..<9 {
    for j in 0..<9 {
        if arr[i][j] == maxV {
            print(maxV)
            print(i + 1, j + 1)
            break
        }
    }
}

print(arr)
