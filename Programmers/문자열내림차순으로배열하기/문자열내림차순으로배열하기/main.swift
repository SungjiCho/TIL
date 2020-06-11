//
//  main.swift
//  문자열내림차순으로배열하기
//
//  Created by 조성지 on 2020/06/11.
//  Copyright © 2020 조성지. All rights reserved.
//

extension Character{
    var isAscii: Bool{
        return unicodeScalars.allSatisfy{ $0.isASCII }
    }
    
    var ascii: UInt32?{
        return isAscii ? unicodeScalars.first?.value : nil
    }
}

extension StringProtocol{
    var ascii: [UInt32]{
        return compactMap{ $0.ascii }
    }
}

func solution(_ s:String) -> String {
    var str = ""
    var arr = s.ascii
    var descending = arr.sorted(by: >)
    
    for item in descending{
        str.unicodeScalars.append(UnicodeScalar(item)!)
    }
    return str
}
