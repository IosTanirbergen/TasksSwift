import UIKit
var i = 0
func stringAngelica(s: String, n: Int) -> Int {
    if s.count <= 0 || n <= 0 {
        return 0
    }
    if s.count == 1 {
        if s != "a" {
            return 0
        }
        return n
    }
    let Array = s.components(separatedBy: "a")
    if n == 1 {
        if Array.count - 1 > 0  {
            return Array.count - 1
        } else {
            return 0
        }
    }
    
    let counterString = Array.count - 1
    if counterString <= 0 {
         return 0
    }
    
    
    var life = n / s.count
    life *= counterString
    var reqular = n % s.count
    while reqular > 0 {
        
        let s_srting = s[s.index(s.startIndex, offsetBy: i)]
        if s_srting == "a" {
            life += 1
        }
        reqular -= 1
        i += 1
    }
    return life
}

print(stringAngelica(s: "a", n: 1000000000000))
print(stringAngelica(s: "aba", n: 10))
