//
//  main.swift
//  최소최대
//
//  Created by 조성지 on 2020/06/26.
//  Copyright © 2020 조성지. All rights reserved.
//

readLine()
let arr = readLine()!.split{$0==" "}.map{ Int($0)! }
print("\(arr.min()!) \(arr.max()!)")

