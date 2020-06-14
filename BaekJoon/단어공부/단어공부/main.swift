//
//  main.swift
//  단어공부
//
//  Created by 조성지 on 2020/06/14.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

var word = ""
var wordArr = [String]()
var wordDict = [Int:String]()

if let input = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines){
    word = input.uppercased()
    wordArr = word.map({String($0)})
}else{
    fatalError("Bad input")
}

print(wordArr)

var temp = [Int]()
while true{
    var cnt = 1
    for i in 1..<wordArr.count{
        if wordArr[0] == wordArr[i]{
            cnt += 1
            temp.append(i)
        }
    }
    wordDict[cnt] = wordArr[0]
    if wordArr.count <= 1{
        break
    }else{
        for index in temp{
            wordArr.remove(at: index)
        }
        wordArr.remove(at: 0)
    }
}

var first = true
var max = 0
var output = "?"

for(key, value) in wordDict{
    print(key, value)
}
