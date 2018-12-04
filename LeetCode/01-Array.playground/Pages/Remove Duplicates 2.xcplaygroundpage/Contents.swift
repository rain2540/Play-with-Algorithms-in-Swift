//: [Previous](@previous)

import Foundation

//: ## Remove Duplicates from Sorted Array II
//:
//: Follow up for "Remove Duplicates": What if duplicates are allowed at most twice?
//:
//: For example, Given sorted array A = [1,1,1,2,2,3],
//:
//: Your function should return length = 5, and A is now [1,1,2,2,3].

//: ## 从已排序的数组中删除重复项 II
//:
//: 跟进“删除重复项”：如果最多允许重复两次怎么办？
//:
//: 例如，给定排序数组A = [1,1,1,2,2,3]，
//:
//: 你的函数应该返回length = 5，A现在是[1,1,2,2,3]。

func removeDuplicates(array: inout [Int]) -> Int {
    if array.count == 0 {
        return 0
    }

    var j = 0
    var num = 0
    for i in 1 ..< array.count {
        if array[j] == array[i] {
            num += 1
            if num < 2 {
                j += 1
                array[j] = array[i]
            }
        } else {
            j += 1
            array[j] = array[i]
            num = 0
        }
    }
    return j + 1
}

var array = [1, 1, 1, 2, 2, 3]
print(array)
removeDuplicates(array: &array)
print(array)

//: [Next](@next)
