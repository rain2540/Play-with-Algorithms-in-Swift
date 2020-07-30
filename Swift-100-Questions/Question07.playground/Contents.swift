import UIKit


extension String {

    func allowToLogin(with sdv: String) -> Bool {
        var res = false

        var strings = components(separatedBy: ".").compactMap { Int($0) }
        var sdvs = sdv.components(separatedBy: ".").compactMap { Int($0) }

        if strings.count > sdvs.count {
            for _ in 0 ..< strings.count - sdvs.count {
                sdvs.append(0)
            }
        }

        if sdvs.count > strings.count {
            for _ in 0 ..< sdvs.count - strings.count {
                strings.append(0)
            }
        }

        print(strings)
        print(sdvs)
        for index in 0 ..< strings.count {
            if strings[index] < sdvs[index] {
                res = false
            } else if strings[index] > sdvs[index] {
                res = true
            } else {
                if index == strings.count - 1 {
                    res = !(strings.count < sdvs.count)
                    print(strings.count < sdvs.count)
                    print(res)
                } else {
                    continue
                }
            }
        }
        return res
    }

}

