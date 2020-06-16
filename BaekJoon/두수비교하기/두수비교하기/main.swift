//
//  main.swift
//  두수비교하기
//
//  Created by 조성지 on 2020/06/16.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

guard let line = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines) else { fatalError("Bad input") }

let arr: [Int] = line.components(separatedBy: " ").map{
    guard let item = Int($0) else { fatalError("Not integer") }
    return item
}

if arr[0] < arr[1]{
    print("<")
}else if arr[0] > arr[1]{
    print(">")
}else{
    print("==")
}
