//
//  main.swift
//  ClassVsInstance
//
//  Created by 조성지 on 2020/05/19.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

class Person{
    var age: Int = 0
    
    init(initialAge: Int) {
        if initialAge < 0{
            print("Age is not valid, setting age to 0.")
        }else{
            age = initialAge
        }
    }
    
    func amIOld(){
        if age < 13{
            print("You are young.")
        }else if age >= 13 && age < 18{
            print("You are a teenager.")
        }else{
            print("You are old.")
        }
    }
    
    func yearPasses(){
        age += 1
    }
}


let t = Int(readLine()!)!

for _ in 0..<t{
    
    let age = Int(readLine()!)!
    let p = Person(initialAge: age)
    
    p.amIOld()
    
    for _ in 1...3{
        p.yearPasses()
    }
    
    p.amIOld()
    
    print("")
}
