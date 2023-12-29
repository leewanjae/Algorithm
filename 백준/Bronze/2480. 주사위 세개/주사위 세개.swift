import Foundation

let dice = readLine()!.split(separator: " ").map { Int(String($0))! }
let (one, two, three) = (dice[0], dice[1], dice[2])
var money = 0

if one == two && one == three && two == three {
    let firstC = 10000 + one * 1000
    money += firstC
} else if (one == two && one != three) || (one == three && two != three) || (two == three && one != two){
    var secondD = 0
    
    if one == two && one != three {
        secondD = one
    } else if one == three && two != three {
        secondD = three
    } else {
        secondD = two
    }
    
    let secondC = 1000 + secondD * 100
    money += secondC
} else {
    var maxV = dice.max()!
    money += maxV * 100
}

print(money)
