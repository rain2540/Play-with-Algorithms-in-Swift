//
//  ModelHelper.swift
//  Bucket Sort
//
//  Created by hljxmxx on 16/7/31.
//  Copyright © 2016年 smartech. All rights reserved.
//

import Foundation

struct ModelHelper {

    /// 获取以给定整型数组的最小值和最大值为边界 公差为 1 的等差数列构成的数组的元素个数
    ///
    /// - Parameter nums: 整型数组
    /// - Returns: 新数组元素个数
    static func countOf(_ nums: [Int]) -> Int {
        return max(maxOf(nums) - minOf(nums), maxOf(nums)) + 1
    }

    /// 获取整型数组的最小值
    ///
    /// - Parameter nums: 整型数组
    /// - Returns: 数组元素最小值
    static func minOf(_ nums: [Int]) -> Int {
        return getMinAndMaxOf(nums).min
    }

    /// 获取整型数组的最大值
    ///
    /// - Parameter nums: 整型数组
    /// - Returns: 数组元素最大值
    static func maxOf(_ nums: [Int]) -> Int {
        return getMinAndMaxOf(nums).max
    }
    
    /// 获取整型数组的最小值和最大值
    ///
    /// - Parameter nums: 整型数组
    /// - Returns: 装有数组最小值和最大值的元组
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
