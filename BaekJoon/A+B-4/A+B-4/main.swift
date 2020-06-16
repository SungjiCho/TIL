//
//  main.swift
//  A+B-4
//
//  Created by 조성지 on 2020/06/16.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

repeat{
    
    guard let line = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines)
        else { break }
    
    let arr: [Int] = line.components(separatedBy: " ").map{
        guard let item = Int($0) else { fatalError("No Input") }
        return item
    }
    
    print(arr[0] + arr[1])
    
}while true
