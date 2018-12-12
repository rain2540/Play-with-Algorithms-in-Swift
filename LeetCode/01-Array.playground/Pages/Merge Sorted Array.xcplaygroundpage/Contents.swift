//: [Previous](@previous)

import Foundation

//: ## Merge Sorted Array
//:
//: Given two sorted integer arrays A and B, merge B into A as one sorted array.
//:
//: Note: You may assume that A has enough space (size that is greater or equal to m + n) to hold additional elements from B. The number of elements initialized in A and B are m and n respectively.

func merge(b: [Int], into a: inout [Int]) {
    var i = a.count + b.count - 1
    var j = a.count - 1
    var k = b.count - 1

    a.append(contentsOf: b)

    while i >= 0 {
        if j >= 0 && k >= 0 {
            if a[j] > b[k] {
                a[i] = a[j]
                j -= 1
            } else {
                a[i] = b[k]
                k -= 1
            }
        } else if j >= 0 {
            a[i] = a[j]
            j -= 1
        } else if k >= 0 {
            a[i] = b[k]
            k -= 1
        }
        i -= 1
    }
}

var a = [1, 3, 5]
var b = [2, 4, 6]
merge(b: b, into: &a)


//: Another implementation (with return value)

func merged(a: [Int], b: [Int]) -> [Int] {
    var i = a.count + b.count - 1
    var j = a.count - 1
    var k = b.count - 1

    var res = Array<Int>(repeating: 0, count: a.count + b.count)

    while i >= 0 {
        if j >= 0 && k >= 0 {
            if a[j] > b[k] {
                res[i] = a[j]
                j -= 1
            } else {
                res[i] = b[k]
                k -= 1
            }
        } else if j >= 0 {
            res[i] = a[j]
            j -= 1
        } else if k >= 0 {
            res[i] = b[k]
            k -= 1
        }
        i -= 1
    }
    return res
}

print(merged(a: a, b: b))

//: [Next](@next)
