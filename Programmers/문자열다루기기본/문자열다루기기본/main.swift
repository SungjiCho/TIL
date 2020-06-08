//
//  main.swift
//  문자열다루기기본
//
//  Created by 조성지 on 2020/06/08.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

func solution(_ s:String) -> Bool {
    
    var flag = true
    
    if s.count == 4 || s.count == 6{
        let arr = s.components(separatedBy: "").map({
            (value: String) -> Int? in
            guard let arrItem = Int(value) else {
                flag = false
                return nil
            }
            return arrItem
        })
    }else {
        flag = false
    }
    return flag
}
