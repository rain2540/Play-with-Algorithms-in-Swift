import UIKit


extension String {

    /// App 登录版本号与服务器设置版本号比对，判断是否满足登录条件
    /// - Parameter sdv: 服务器设置的版本号
    /// - Returns: 检验结果
    func allowToLogin(with sdv: String) -> Bool {
        // 检验结果，默认为 false
        var res = false

        // 版本字符串转换为 Int 数组
        var strings = components(separatedBy: ".").compactMap { Int($0) }
        var sdvs = sdv.components(separatedBy: ".").compactMap { Int($0) }

        // 若设置版本位数小于传入版本位数，用 “0” 补齐
        if strings.count > sdvs.count {
            for _ in 0 ..< strings.count - sdvs.count {
                sdvs.append(0)
            }
        }

        // 若传入版本位数小于设置版本位数，用 “0” 补齐
        if sdvs.count > strings.count {
            for _ in 0 ..< sdvs.count - strings.count {
                strings.append(0)
            }
        }

        // 比较
        for index in 0 ..< strings.count {
            if strings[index] < sdvs[index] {  // 同一位置，传入值小于设定值，不通过
                res = false
                break
            } else if strings[index] > sdvs[index] {  // 同一位置，传入值大于设定值，通过
                res = true
                break
            } else {  // 同一位置，值相等
                if index == strings.count - 1 {  // 若为传入值最后一位
                    // 传入值位数小于设定值位数，不通过；否则通过
                    res = !(strings.count < sdvs.count)
                    break
                } else {  // 其他情况继续判断
                    continue
                }
            }
        }
        return res  // 返回检验结果
    }

}


let sv1 = "2.0.0.500"
print("3.1.0".allowToLogin(with: sv1))
print("3.0.1.0".allowToLogin(with: sv1))
print("2.1.0".allowToLogin(with: sv1))
print("2.0.0".allowToLogin(with: sv1))
print("2.0.0.550".allowToLogin(with: sv1))
print("2.0.0.500".allowToLogin(with: sv1))
print("2.0.0.450".allowToLogin(with: sv1))

let sv2 = "2.1"
print("3.1.0".allowToLogin(with: sv2))
print("3.0.1.0".allowToLogin(with: sv2))
print("2.1.0".allowToLogin(with: sv2))
print("2.0.0".allowToLogin(with: sv2))
print("2.1.0.550".allowToLogin(with: sv2))
print("2.0.0.500".allowToLogin(with: sv2))
print("1.9".allowToLogin(with: sv2))
print("1.9.0".allowToLogin(with: sv2))
