//
//  ViewController.swift
//  Bucket Sort
//
//  Created by RAIN on 16/7/31.
//  Copyright © 2016-2017 Smartech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var nums = [Int]()
    @IBOutlet weak var numInput: UITextField!
    
    //  MARK: Lifecycle
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //  MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        let nu = [0, -1, -2, 3, 7, 6, 5, 8, 4, 1, 3, -5]
        let res = BucketSorter.sort(nums: nu)
        print("result: \n", res)

        var numbers: [Int] = []
        let start1 = Date(timeIntervalSinceNow: 0)
        for _ in 0 ..< 1000 {
            let num = arc4random() % 1_0000 + 1
            numbers.append(Int(num))
        }
        let end1 = Date(timeIntervalSinceNow: 0)
        let d1 = end1.timeIntervalSince1970 - start1.timeIntervalSince1970
        print(d1)

        let start3 = Date(timeIntervalSinceNow: 0)
        let r = BucketSorter.sort(nums: numbers)
        let end3 = Date(timeIntervalSinceNow: 0)
        let d3 = end3.timeIntervalSince1970 - start3.timeIntervalSince1970
        print(d3)
        print(r)
    }

    //  MARK: IBActions
    @IBAction func addToNums(_ sender: UIButton) {
        guard let text = numInput.text,
            let num = Int(text) else {
                return
        }
        nums.append(num)
        numInput.text = ""
        print("input nums: \n", nums)
    }

    @IBAction func resetAction(_ sender: UIButton) {
        nums.removeAll()
        numInput.text = ""
        print("input nums: \n", nums)
    }

    @IBAction func sortAction(_ sender: UIButton) {
        let res = BucketSorter.sort(nums: nums)
        print("input results: \n", res)
    }
}

extension ViewController: UITextFieldDelegate {

}

