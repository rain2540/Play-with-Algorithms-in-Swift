//: [Previous](@previous)

import Foundation

//: ## Merge Sorted Array
//:
//: Given two sorted integer arrays A and B, merge B into A as one sorted array.
//:
//: Note: You may assume that A has enough space (size that is greater or equal to m + n) to hold additional elements from B. The number of elements initialized in A and B are m and n respectively.

func merge(sortedB: [Int], into sortedA: inout [Int]) {
    var i = sortedA.count + sortedB.count - 1
    var j = sortedA.count - 1
    var k = sortedB.count - 1

    sortedA.append(contentsOf: sortedB)

    while i >= 0 {
        if j >= 0 && k >= 0 {
            if sortedA[j] > sortedB[k] {
                sortedA[i] = sortedA[j]
                j -= 1
            } else {
                sortedA[i] = sortedB[k]
                k -= 1
            }
        } else if j >= 0 {
            sortedA[i] = sortedA[j]
            j -= 1
        } else if k >= 0 {
            sortedA[i] = sortedB[k]
            k -= 1
        }
        i -= 1
    }
}

var a = [1, 3, 5]
let b = [2, 4, 6]
merge(sortedB: b, into: &a)
print(a)


//: Another implementation (with return value)

func merged(sortedA: [Int], sortedB: [Int]) -> [Int] {
    var i = sortedA.count + sortedB.count - 1
    var j = sortedA.count - 1
    var k = sortedB.count - 1

    var res = Array<Int>(repeating: 0, count: sortedA.count + sortedB.count)

    while i >= 0 {
        if j >= 0 && k >= 0 {
            if sortedA[j] > sortedB[k] {
                res[i] = sortedA[j]
                j -= 1
            } else {
                res[i] = sortedB[k]
                k -= 1
            }
        } else if j >= 0 {
            res[i] = sortedA[j]
            j -= 1
        } else if k >= 0 {
            res[i] = sortedB[k]
            k -= 1
        }
        i -= 1
    }
    return res
}

let c = [1, 3, 5]
let d = [2, 4, 6]
print(merged(sortedA: c, sortedB: d))


//: Update

func merge(b: [Int], into a: inout [Int]) {
    let c = b.sorted()
    a.sort()

    merge(sortedB: c, into: &a)
}

var e = [1, 5, 3]
let f = [4, 6, 2]
merge(b: f, into: &e)
print(e)



//: [Next](@next)
