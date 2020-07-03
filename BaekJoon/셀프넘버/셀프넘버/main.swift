//
//  main.swift
//  셀프넘버
//
//  Created by 조성지 on 2020/06/29.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

func selfNumber(n: Int){
        
    var selfSet = Set<Int>()
    var n = n
    var dn = n
    
    while dn < 100{
        selfSet.insert(dn)
        n = dn
        while n > 0{
            dn += n%10
            n = n/10
        }
    }
    
    
    
    selfSet.remove(1)
    print("start")
    for i in 1..<100{
        if selfSet.contains(i){
            continue
        }else{
            print(i)
        }
    }
}

selfNumber(n: 1)

