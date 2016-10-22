//
//  ModelHelper.swift
//  Bucket Sort
//
//  Created by hljxmxx on 16/7/31.
//  Copyright © 2016年 smartech. All rights reserved.
//

import Foundation

struct ModelHelper {

    static func countOf(_ nums: [Int]) -> Int {
        return max(maxOf(nums) - minOf(nums), maxOf(nums)) + 1
    }

    static func minOf(_ nums: [Int]) -> Int {
        return getMinAndMaxOf(nums).min
    }

    static func maxOf(_ nums: [Int]) -> Int {
        return getMinAndMaxOf(nums).max
    }
    
    static func getMinAndMaxOf(_ nums: [Int]) -> (min: Int, max: Int) {
        var min = Int.max
        var max = Int.min

        (0 ..< nums.count).forEach { (i) in
            if nums[i] < min {
                min = nums[i]
            }

            if nums[i] > max {
                max = nums[i]
            }
        }

        return (min, max)
    }
}
