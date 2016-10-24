//
//  BucketSorter.swift
//  Bucket Sort
//
//  Created by hljxmxx on 16/7/31.
//  Copyright © 2016年 smartech. All rights reserved.
//

import Foundation

struct BucketSorter {
    static func sort(nums: [Int]) -> [Int] {
        let maxOfNums = ModelHelper.maxOf(nums)
        let countOfNums = ModelHelper.countOf(nums)
        let count = max(maxOfNums, countOfNums) + 1

        var results = [Int]()
        var buckets = [Int](repeating: 0, count: count)

        for i in 0 ..< nums.count {
            if maxOfNums < countOfNums {
                let t = nums[i] - ModelHelper.minOf(nums)
                buckets[t] += 1
            } else {
                let t = nums[i]
                buckets[t] += 1
            }
        }

        for i in 0 ..< buckets.count {
            for _ in 0 ..< buckets[i] {
                if maxOfNums < countOfNums {
                    let result = i + ModelHelper.minOf(nums)
//                    print(result)
                    results.append(result)
                } else {
//                    print(i)
                    results.append(i)
                }
            }
        }
        print("buckets: \n", buckets)
        return results
    }
}
