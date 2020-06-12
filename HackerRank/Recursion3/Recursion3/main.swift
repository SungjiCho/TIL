//
//  main.swift
//  Recursion3
//
//  Created by 조성지 on 2020/06/12.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

// Complete the factorial function below.
func factorial(n: Int) -> Int {
    
    if n <= 1{
        return 1
    }else{
        return n*factorial(n: n-1)
    }
}

//let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
//FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
//let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

let result = factorial(n: n)
print(result)

//fileHandle.write(String(result).data(using: .utf8)!)
//fileHandle.write("\n".data(using: .utf8)!)
