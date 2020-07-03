//
//  main.swift
//  탑
//
//  Created by 조성지 on 2020/07/03.
//  Copyright © 2020 조성지. All rights reserved.
//

func solution(_ heights:[Int]) -> [Int] {
    
    var result = [Int](repeating: 0, count: heights.count)

    for i in (1..<heights.count).reversed(){
        for j in (0..<i).reversed(){
            if heights[i] < heights[j]{
                result[i] = j+1
                break
            }
        }
    }
    
    return result
}




