//: Example 99
//:
//: 题目：辗转相除法求两个数的最大公约数 (Greatest Common Divisor)
//:
//: 1.程序分析：
//:
//: 2.程序源代码：

import UIKit

// 元组
func gcd(a: Int, b: Int) -> Int {
    var x = a, y = b
    while y != 0 {
        (x, y) = (y, x % y)
    }
    return x
}

let x = 75, y = 100
let result1 = gcd(a: x, b: y)
print("\(x) 和 \(y) 的最大公约数是 \(result1)")


//  循环
func gcdLoop(a: Int, b: Int) -> Int {
    var x = a, y = b
    var n = x % y
    while n != 0 {
        x = y
        y = n
        n = x % y
    }
    return y
}

let result2 = gcdLoop(a: x, b: y)
print("\(x) 和 \(y) 的最大公约数是 \(result2)")


//  递归
func gcdRecursive(a: Int, b: Int) -> Int {
    return b == 0 ? a : gcdRecursive(a: b, b: a % b)
}

let result3 = gcdRecursive(a: x, b: y)
print("\(x) 和 \(y) 的最大公约数是 \(result3)")


//: 附：求两个数的最小公倍数 (Least Common Multiple)
//:
//: 1.程序分析：ab = gcd(a, b) * lcm(a, b)
//:
//: 2.程序源代码：

func lcm(a: Int, b: Int) -> Int {
    return (a * b) / gcd(a: a, b: b)
}

lcm(a: 75, b: 100)
