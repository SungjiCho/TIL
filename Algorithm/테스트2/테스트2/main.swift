//
//  main.swift
//  테스트2
//
//  Created by 조성지 on 2020/07/04.
//  Copyright © 2020 조성지. All rights reserved.
//

extension Array where Element:Equatable {
    func removeDuplicates() -> [Element] {
        var result = [Element]()

        for value in self {
            if result.contains(value) == false {
                result.append(value)
            }
        }

        return result
    }
}

func setArray(_ array:[Int]) -> [Int]{
    var set = [Int]()
    if array.count < 1{
        set = []
    }else{
        set = array.removeDuplicates()
    }
    return set
}

func sum(_ A:[Int], _ B:[Int]) -> [Int]{
    var sum = [Int]()
    if (A+B).count < 1{
        sum = []
    }else{
        sum = (A+B).removeDuplicates()
    }
    return sum
}

func num(_ A:[Int], _ B:[Int]) -> [Int]{
    var num = [A.count, 0]
    for b in B{
        if A.contains(b){
            num[0] -= 1
            num[1] += 1
        }
    }
    return num
}


func solution(_ arrayA:[Int], _ arrayB:[Int]) -> [Int]{
    
    var output = [Int]()
    let A = setArray(arrayA)
    let B = setArray(arrayB)
    let S = sum(A, B)
    let N = num(A, B)
    
    output.append(A.count)
    output.append(B.count)
    output.append(S.count)
    output += N
        
//    if arrayA.count < 1{
//        A = []
//        output.append(A.count)
//    }else{
//        A = arrayA.removeDuplicates()
//        output.append(A.count)
//    }
//
//    if arrayB.count < 1{
//        B = []
//        output.append(B.count)
//    }else{
//        B = arrayB.removeDuplicates()
//        output.append(B.count)
//    }
    
//    let arrayS = A + B
//    if arrayS.count < 1{
//        output.append(arrayS.count)
//    }else{
//        let sum = arrayS.removeDuplicates()
//        output.append(sum.count)
//    }
    
//    var complement = A.count
//    var intersect = 0
//    for b in B{
//        if A.contains(b){
//            complement -= 1
//            intersect += 1
//        }
//    }
//    output.append(complement)
//    output.append(intersect)
    
    
    return output
}


var A = [1, 6, 6]
var B = [Int]()

B = [2, 3, 4, 2, 6]
A = [1, 6, 7]
//var complement = A.count
//var intersect = 0
//
//for b in B{
//    if A.contains(b){
//        complement -= 1
//        intersect += 1
//    }
//}
//
//print(complement)
//print(intersect)


print(solution(A, B))
