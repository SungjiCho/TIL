//
//  main.swift
//  SortingAlgorithms
//
//  Created by 조성지 on 2020/06/12.
//  Copyright © 2020 조성지. All rights reserved.
//

public func bubbleSort<Element>(_ array: inout [Element])
    where Element: Comparable{
    
        guard array.count >= 2 else{
            return
        }
        
        for end in (1..<array.count).reversed(){
            var swapped = false
            
            for current in 0..<end{
                if array[current] > array[current+1]{
                    array.swapAt(current, current+1)
                    swapped = true
                }
            }
            
            if !swapped{
                return
            }
        }
}

