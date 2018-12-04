//: [Previous](@previous)

import Foundation

//: ## Remove Duplicates from Sorted Array
//:
//: Given a sorted array, remove the duplicates in place such that each element appear only once and return the new length.
//:
//: Do not allocate extra space for another array, you must do this in place with constant memory.
//:
//: For example, Given input array A = [1,1,2],
//:
//: Your function should return length = 2, and A is now [1,2].

//: ## 从已排序的数组中删除重复项
//:
//: 给定排序数组，删除重复项，使每个元素只出现一次并返回新长度。
//:
//: 不要为另一个数组分配额外的空间，你必须使用常量内存来做到这一点。
//:
//: 例如，给定输入数组 A = [1,1,2]，
//:
//: 你的函数应该返回 length = 2，并且 A 现在是[1,2]。

func removeDuplicates(in array: inout [Int]) -> Int {
    if array.count == 0 {
        return 0
    }

    var j = 0
    for i in 1 ..< array.count {
        if array[j] != array[i] {
            j += 1
            array[j] = array[i]
        }
    }
    return j + 1
}

var array = [1, 1, 2, 3]
print(array)
removeDuplicates(in: &array)
print(array)

//: [Next](@next)
