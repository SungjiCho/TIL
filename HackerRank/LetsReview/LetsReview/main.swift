//
//  main.swift
//  LetsReview
//
//  Created by 조성지 on 2020/05/22.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation
import Darwin

let numStrings = Int(readLine()!)!

func printEvenAndOdd(string: String) {
    // This prints inputString to stderr for debugging:
    fputs("string: " + string + "\n", stderr)
    
    var evenString = ""
    var oddString = ""
    
    for (index, value) in string.enumerated(){
        if index % 2 == 0{
            evenString += String(value)
        }else{
            oddString += String(value)
        }
    }
    
    print("\(evenString) \(oddString)")
}

for _ in 1...numStrings {
    let inputString = readLine()!
    printEvenAndOdd(string: inputString)
}



