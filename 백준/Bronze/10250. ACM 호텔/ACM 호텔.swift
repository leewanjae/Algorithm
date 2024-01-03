import Foundation

let line = Int(readLine()!)!

for _ in 0..<line {
    let roomInfo = readLine()!.split(separator: " ").map({Int(String($0))!})
    let (H, W, N) = (roomInfo[0], roomInfo[1], roomInfo[2])
    
    let 배정층: Int
    let 배정호수: Int
   
    if N % H == 0 {
        배정층 = H
        배정호수 = N / H
    } else {
        배정층 = N % H
        배정호수 = N / H + 1
    }
    
    let 방번호 = 배정층 * 100 + 배정호수
    print(방번호)
}
