//: [Previous](@previous)

import Foundation

//: ## Plus One
//:
//: Given a non-negative number represented as an array of digits, plus one to the number.
//:
//: The digits are stored such that the most significant digit is at the head of the list.
//:
//: ## 加一
//:
//: 将一个非负数表示为数字数组，给这个非负数加一。
//:
//: 使这些数字按照最高位在列表开头的方式排序。

func plusOne(digits: inout [Int]) -> [Int] {
    var res = [Int](repeating: 0, count: digits.count)
    var sum = 0
    var one = 1
    for i in (0 ..< digits.count).reversed() {
        sum = one + digits[i]
        one = sum / 10
        res[i] = sum % 10
    }

    if one > 0 {
        res.insert(one, at: res.startIndex)
    }
    return res
}

var array = [1, 2, 9]
array = plusOne(digits: &array)

//: [Next](@next)
