//
//  ViewController.swift
//  Quick Sort
//
//  Created by RAIN on 2017/10/23.
//  Copyright © 2017年 Smartech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        /*var numbers: [Int] = []
        let start1 = Date(timeIntervalSinceNow: 0)
        for _ in 0 ..< 1000 {
            let num = arc4random() % 1_0000 + 1
            numbers.append(Int(num))
        }
        let end1 = Date(timeIntervalSinceNow: 0)
        let d1 = end1.timeIntervalSince1970 - start1.timeIntervalSince1970
        print(d1)

        let start3 = Date(timeIntervalSinceNow: 0)
        quicksort(nums: &numbers)
        let end3 = Date(timeIntervalSinceNow: 0)
        let d3 = end3.timeIntervalSince1970 - start3.timeIntervalSince1970
        print(d3)*/

        var nums = [7, 3, 5, 2, 6, 1, 4, 0]
        quicksort(nums: &nums)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func quicksort(nums: inout [Int]) {
        let left = 0, right = nums.count - 1
        func quicksort(nums: inout [Int], left: Int, right: Int) {
            var i, j, temp: Int
            if left > right {
                return
            }
            temp = nums[left]    // temp 中存储基准数
            i = left
            j = right
            while i != j {
                // 顺序很重要, 要先从右往左找
                while nums[j] >= temp && i < j {
                    j -= 1
                }
                // 再从左往右找
                while nums[i] <= temp && i < j {
                    i += 1
                }
                // 交换两个数在数组中的位置
                if i < j {    // 当 i 和 j 没有相遇时
                    nums.swapAt(i, j)
                }
                print(i, j, nums)
            }
            // 最终将基准数归位
            nums[left] = nums[i]
            nums[i] = temp

            quicksort(nums: &nums, left: left, right: i - 1)    // 继续处理左边的, 这是一个递归的过程
            quicksort(nums: &nums, left: i + 1, right: right)    // 继续处理左边的, 这是一个递归的过程
            print(i, j, nums)
        }
        quicksort(nums: &nums, left: left, right: right)
    }
}
