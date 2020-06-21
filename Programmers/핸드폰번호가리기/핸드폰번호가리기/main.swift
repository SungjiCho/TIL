//
//  main.swift
//  핸드폰번호가리기
//
//  Created by 조성지 on 2020/06/21.
//  Copyright © 2020 조성지. All rights reserved.
//

//import Foundation

func solution(_ phone_number:String) -> String {
    
    var output = ""
    
    let numRange = phone_number.index(phone_number.endIndex, offsetBy: -4)...phone_number.index(phone_number.endIndex, offsetBy: -1)
    
    for i in 0..<phone_number.count-4{
        output += "*"
    }
    output += phone_number[numRange]
    
    return output
}

print(solution("01033334444"))

