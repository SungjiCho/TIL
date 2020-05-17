//
//  main.swift
//  Intro to Conditional Statements
//
//  Created by 조성지 on 2020/05/18.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else{
    fatalError("Bad input")
}

if N%2 != 0 {
    print("Weird")
}else{
    if N >= 2 && N <= 5{
        print("Not Weird")
    }else if N > 5 && N <= 20{
        print("Weird")
    }else{
        print("Not Weird")
    }
}
