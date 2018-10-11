import UIKit

//: ## Remove Element
//:
//: Given an array and a value, remove all instances of that > value in place and return the new length.
//:
//: The order of elements can be changed. It doesn't matter what you leave beyond the new length.

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
