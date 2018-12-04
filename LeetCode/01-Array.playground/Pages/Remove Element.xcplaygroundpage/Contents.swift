import UIKit

//: ## Remove Element
//:
//: Given an array and a value, remove all instances of that > value in place and return the new length.
//:
//: The order of elements can be changed. It doesn't matter what you leave beyond the new length.

//: ## 删除一个元素
//:
//: 给定一个数组和一个值，删除该值的所有实例并返回新的长度。
//:
//: 元素的顺序可以改变。你留下的索引大于新长度的元素并不重要。

func removeElement(in array: inout [Int], elem: Int) -> Int {
    var j = 0
    for i in 0 ..< array.count {
        if array[i] == elem {
            continue
        }
        array[j] = array[i]
        j += 1
    }
    return j
}


var array = [1, 2, 3, 4, 5, 6, 5, 4, 3, 2, 1]
print(array)
removeElement(in: &array, elem: 4)
print(array)

//: [Next](@next)
