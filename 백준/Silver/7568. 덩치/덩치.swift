import Foundation

struct Info {
    var weight: Int
    var height: Int
}

func calculateRanks(bodyInfos: [Info]) -> [Int] {
    var ranks = [Int](repeating: 1, count: bodyInfos.count)
    
    for i in 0..<bodyInfos.count {
        for j in 0..<bodyInfos.count {
            if bodyInfos[i].weight < bodyInfos[j].weight && bodyInfos[i].height < bodyInfos[j].height {
                ranks[i] += 1
            }
        }
    }
    return ranks
}
let line = Int(readLine()!)!
var bodyInfo = [Info]()


for _ in 0..<line {
    let info = readLine()!.split(separator: " ").map { Int(String($0))!}
    bodyInfo.append(Info(weight: info[0], height: info[1]))
}

let ranks = calculateRanks(bodyInfos: bodyInfo)
for rank in ranks {
    print(rank)
}
