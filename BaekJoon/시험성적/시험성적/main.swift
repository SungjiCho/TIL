//
//  main.swift
//  시험성적
//
//  Created by 조성지 on 2020/06/18.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

guard let score = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!) else { fatalError("Bad input") }

switch score{
case 90...100:
    print("A")
case 80...89:
    print("B")
case 70...79:
    print("C")
case 60...69:
    print("D")
default:
    print("F")
}
