//: [Previous](@previous)

import Foundation

//: ## Pascal's Triangle
//:
//: Given numRows, generate the first numRows of Pascal's triangle.
//:
//: For example, given numRows = 5, Return
//:
//: [
//:
//:    [1],
//:
//:   [1,1],
//:
//:  [1,2,1],
//:
//: [1,3,3,1],
//:
//:[1,4,6,4,1]
//:
//: ]

//: 分析
//:
//: 帕斯卡三角有如下的规律
//:
//: * 第 k 层有 k 个元素
//:
//: * 每层第一个以及最后一个元素值为 1
//:
//: * 对于第 k (k > 2) 层第 n (n > 1 && n < k) 个元素 A[k][n], A[k][n] = A[k - 1][n - 1] + A[k - 1][n]

func generate(numRows: Int) -> Array<[Int]> {
    var vals = Array<[Int]>(repeating: [], count: numRows)

    for i in 0 ..< numRows {
        vals[i] = [Int](repeating: 0, count: i + 1)
        vals[i][0] = 1
        vals[i][vals[i].count - 1] = 1

        if i > 0 {
            for j in 1 ..< vals[i].count - 1 {
                vals[i][j] = vals[i - 1][j - 1] + vals[i - 1][j]
            }
        }
    }

    return vals
}

print(generate(numRows: 5))

//: [Next](@next)
