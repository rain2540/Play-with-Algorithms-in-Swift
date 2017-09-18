//
//  ViewController.swift
//  Bubble Sort
//
//  Created by RAIN on 2016/10/29.
//  Copyright © 2016年 Smartech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        var nums: [Int] = []
        let start1 = Date(timeIntervalSinceNow: 0)
        for _ in 0 ..< 500 {
            let num = arc4random() % 1_0000 + 1
            nums.append(Int(num))
        }
        let end1 = Date(timeIntervalSinceNow: 0)
        let d1 = end1.timeIntervalSince1970 - start1.timeIntervalSince1970
        print(d1)
        
        let start2 = Date(timeIntervalSinceNow: 0)
        _ = sort(nums)
        let end2 = Date(timeIntervalSinceNow: 0)
        let d2 = end2.timeIntervalSince1970 - start2.timeIntervalSince1970
        print(d2)
    }

    func sort(_ nums: [Int]) -> [Int] {
        var result = nums
        for i in 1 ..< result.count {
            for j in 1 ... result.count - i {
                if result[j] < result [j - 1] {
                    result.swapAt(j, j - 1)
                    print(i, j, result)
                }
            }
            print()
        }
        return result
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

