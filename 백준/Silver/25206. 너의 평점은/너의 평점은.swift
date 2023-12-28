import Foundation

struct 성적 {
    var 전공: String
    var 전공시수: String
    var 학점: String
}


var 성적배열 = [성적]()
var 학점총합 = 0.0
var 전공평점 = 0.0
var 학점_과목평점_곱 = 0.0

for _ in 0..<20 {
    let infos = readLine()!.split(separator: " ").map { String($0) }
    성적배열.append(성적(전공: String(infos[0]), 전공시수: String(infos[1]), 학점: String(infos[2])))
}

for var 성적 in 성적배열 {
    switch 성적.학점 {
    case "A+":
        성적.학점 = "4.5"
    case "A0":
        성적.학점 = "4.0"
    case "B+":
        성적.학점 = "3.5"
    case "B0":
        성적.학점 = "3.0"
    case "C+":
        성적.학점 = "2.5"
    case "C0":
        성적.학점 = "2.0"
    case "D+":
        성적.학점 = "1.5"
    case "D0":
        성적.학점 = "1.0"
    case "F":
        성적.학점 = "0.0"
        
    default:
        break
    }
    
    if 성적.학점 == "P" {
        continue
    }
    학점총합 += Double(성적.전공시수)!
    학점_과목평점_곱 += Double(성적.전공시수)! * Double(성적.학점)!
    
    전공평점 = 학점_과목평점_곱 / 학점총합
}

print(전공평점)
