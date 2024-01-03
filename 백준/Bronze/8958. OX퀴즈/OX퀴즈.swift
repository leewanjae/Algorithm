let line = Int(readLine()!)!

for _ in 0..<line {
    let checks = readLine()!
    var result = 0
    var continueO = 0

    for check in checks {
        if check == "O" {
            continueO += 1
            result += continueO
        } else {
            continueO = 0
        }
    }
    print(result)
}

