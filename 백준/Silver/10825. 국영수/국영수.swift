
import Foundation

struct Score {
    var name: String
    var korean: Int
    var english: Int
    var math: Int
}

let n = Int(readLine()!)!
var students = [Score]()

for _ in 0..<n {
    var info = readLine()!.split(separator: " ")
    students.append(Score(name: String(info[0]), korean: Int(info[1])!, english: Int(info[2])!, math: Int(info[3])!))
}

students.sort {
    if $0.korean != $1.korean {
        return $0.korean > $1.korean
    } else if $0.english != $1.english {
        return $0.english < $1.english
    } else if $0.math != $1.math {
        return $0.math > $1.math
    } else {
        return $0.name < $1.name
    }
}

for studnet in students {
    print(studnet.name)
}
