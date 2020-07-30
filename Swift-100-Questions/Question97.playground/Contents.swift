//: Example 97
//:
//: 题目：打印天干地支组合
//:
//: 1.程序分析：
//:
//: 2.程序源代码：

import UIKit

func lcm(a: Int, b: Int) -> Int {
    func gcd(a: Int, b: Int) -> Int {
        var x = a, y = b
        var n = x % y
        while n != 0 {
            x = y
            y = n
            n = x % y
        }
        return y
    }
    return (a * b) / gcd(a: a, b: b)
}

let sky = ["甲", "乙", "丙", "丁", "戊", "己", "庚", "辛", "壬", "癸"]
let land = ["子", "丑", "寅", "卯", "辰", "巳", "午", "未", "申", "酉", "戌", "亥"]

for loop in 0 ..< lcm(a: sky.count, b: land.count) {
    let i = loop % sky.count
    let j = loop % land.count
    print(String(format: "%02d.", loop + 1), sky[i] + land[j])
}
