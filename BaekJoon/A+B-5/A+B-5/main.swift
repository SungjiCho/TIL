//
//  main.swift
//  A+B-5
//
//  Created by 조성지 on 2020/06/16.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

repeat{
    if let line = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines){
        let arr = line.components(separatedBy: " ").map({ Int($0)! })
        
        if arr[0] != 0 && arr[1] != 0{
           print(arr[0] + arr[1])
        }else{
            break
        }
    }else{
        fatalError("Bad input")
    }
}while true

