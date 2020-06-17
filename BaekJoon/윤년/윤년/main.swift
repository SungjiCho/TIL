//
//  main.swift
//  윤년
//
//  Created by 조성지 on 2020/06/18.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

guard let Y = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!) else { fatalError("Bad input") }

if Y%4 == 0 && Y%100 != 0 || Y%400 == 0{
    print("1")
}else{
    print("0")
}
