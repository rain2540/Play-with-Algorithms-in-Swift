//: [Previous](@previous)

import Foundation

//: ## Pascal's Triangle II
//: Given an index k, return the kth row of the Pascal's triangle.
//:
//: For example, given k = 3, Return [1,3,3,1].

//: ## 帕斯卡三角 II
//: 给定索引 k，返回 Pascal 三角形的第 k 行。
//:
//: 例如，给定 k = 3，返回[1,3,3,1]。

func getRow(rowIndex: Int) -> [Int] {
    var vals = Array<Int>(repeating: 1, count: rowIndex + 1)
    for i in 0 ... rowIndex {
        if i > 1 {
            for j in (1 ... i - 1).reversed() {
                vals[j] = vals[j] + vals[j - 1]
            }
        }
    }
    return vals
}

print(getRow(rowIndex: 3))

//: [Next](@next)
