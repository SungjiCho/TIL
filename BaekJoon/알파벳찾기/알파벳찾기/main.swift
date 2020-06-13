//
//  main.swift
//  알파벳찾기
//
//  Created by 조성지 on 2020/06/13.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

guard let s = readLine()?.trimmingCharacters(in: .whitespaces) else { fatalError("Bad input") }

let arr = s.map({ $0.unicodeScalars.first!.value-97 })

var answer = [Int](repeating: -1, count: 26)

for (index, item) in arr.enumerated(){
    if answer[Int(item)] == -1{
        answer[Int(item)] = index
    }
}

for n in answer{
    print(n, terminator: " ")
}


