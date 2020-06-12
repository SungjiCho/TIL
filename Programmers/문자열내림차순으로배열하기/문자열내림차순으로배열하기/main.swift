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

func bubbleSort(_ arr:[UInt32]) -> [UInt32]{
    
    var sortedArr = arr
    for i in 0..<sortedArr.count-1{
        for j in 0..<sortedArr.count-i-1{
            if sortedArr[j] > sortedArr[j+1]{
                (sortedArr[j], sortedArr[j+1]) = (sortedArr[j+1], sortedArr[j])
            }
        }
    }
    
    return sortedArr
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

var s = "abcdeZ"
