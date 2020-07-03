//
//  main.swift
//  평균은넘겠지
//
//  Created by 조성지 on 2020/06/27.
//  Copyright © 2020 조성지. All rights reserved.
//
import Foundation

let C = Int(readLine()!)!

for _ in 0..<C{
    let line = readLine()!.split{ $0==" " }.map{ Double($0)! }
    let N = Int(line[0])
    var avg = 0.0
    for i in 1...N{
        avg += line[i]/Double(N)
    }
    
    var count = 0.0
    for i in 1...N{
        if line[i] > avg{
            count += 1.0
        }
    }
    let rate = count/Double(N)*100
    let roundedRate = round(rate*1000)/1000
    print("\(String(format: "%.3f",  roundedRate))%")
}
