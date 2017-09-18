//
//  BucketSorter.swift
//  Bucket Sort
//
//  Created by hljxmxx on 16/7/31.
//  Copyright © 2016年 smartech. All rights reserved.
//

import Foundation

struct BucketSorter {
    /// 为整型数组排序
    ///
    /// - Parameter nums: 未经排序的整型数组
    /// - Returns: 完成排序的整型数组
    static func sort(nums: [Int]) -> [Int] {
        // 整型数组最大值
        let maxOfNums = ModelHelper.maxOf(nums)
        // 以整型数组最大值和最小值为边界 公差为1的等差数列构成数组的元素个数
        let countOfNums = ModelHelper.countOf(nums)
        // 取整型数组最大值与新数组个数中的最大的 加1 作为"桶"数组元素个数
        let count = max(maxOfNums, countOfNums) + 1

        // 记录排序结果的数组
        var results = [Int]()
        // "桶"数组
        var buckets = [Int](repeating: 0, count: count)

        // 整型数组元素放入"桶"数组对应位置
        for i in 0 ..< nums.count {
            if maxOfNums < countOfNums {
                // 以整型数组第 i 个元素的值与其最小值的差 作为"桶"数组的索引t
                let t = nums[i] - ModelHelper.minOf(nums)
                print(i, nums[i])
                // "桶"数组第t个元素值加1
                buckets[t] += 1
            } else {
                // 以整型数组第 i 个元素的值 作为"桶"数组的索引t
                let t = nums[i]
                print(i, t)
                // "桶"数组第t个元素值加1
                buckets[t] += 1
            }
        }

        // 将"桶"数组元素 依次放入结果数组
        for i in 0 ..< buckets.count {
            // "桶"数组元素值 为结果数组中 某个值出现的次数
            for _ in 0 ..< buckets[i] {
                if maxOfNums < countOfNums {
                    // i 与整型数组最小值的和 作为结果数组元素
                    let result = i + ModelHelper.minOf(nums)
                    print(result)
                    // 结果数组添加元素
                    results.append(result)
                } else {
                    print(i)
                    // i 作为结果数组元素 添加进结果数组
                    results.append(i)
                }
            }
        }
//        print("buckets: \n", buckets)
        return results
    }
}
