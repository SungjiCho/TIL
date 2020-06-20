//
//  main.swift
//  직사각형별찍기
//
//  Created by 조성지 on 2020/06/20.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

let line = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (n, m) = (line[0], line[1])

for _ in 0..<m{
    for _ in 0..<n{
        print("*", terminator: "")
    }
    print()
}

