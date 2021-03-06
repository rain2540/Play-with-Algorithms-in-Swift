//: Example 02
//:
//: 题目：一个整数，它加上100后是一个完全平方数，再加上168又是一个完全平方数，请问该数是多少？
//:
//: 1.程序分析：在10万以内判断，先将该数加上100后再开方，再将该数加上268后再开方，如果开方后的结果满足如下条件，即是结果。请看具体分析：
//:
//: 2.程序源代码：

import Foundation

var i, x, y, z: Int
for i in 1 ..< 1_0000 {
    x = Int(sqrt(Double(i + 100)))  /*x为加上100后开方后的结果*/
    y = Int(sqrt(Double(i + 268)))  /*y为再加上168后开方后的结果*/
    if (x * x == i + 100) && (y * y == i + 268) { /*如果一个数的平方根的平方等于该数，这说明此数是完全平方数*/
        print(i)
    }
}
