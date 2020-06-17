//
//  main.swift
//  사분면고르기
//
//  Created by 조성지 on 2020/06/18.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

guard let x = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!) else { fatalError("Bad x input") }

guard let y = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!) else { fatalError("Bad y input") }

if x > 0 && y > 0{
    print("1")
}else if x < 0 && y > 0{
    print("2")
}else if x < 0 && y < 0{
    print("3")
}else{
    print("4")
}

