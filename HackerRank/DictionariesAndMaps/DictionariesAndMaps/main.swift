//
//  main.swift
//  DictionariesAndMaps
//
//  Created by 조성지 on 2020/06/05.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!) else { fatalError("Bad input") }

func updatePhoneBook(n: Int) -> [String: String] {
    var dic = [String : String]()
    for _ in 0 ..< n{
        guard let dicTemp = readLine() else { fatalError("Bad input") }
        let dicArr: [String] = dicTemp.split(separator: " ").map{
            let dicItem = $0.trimmingCharacters(in: .whitespacesAndNewlines)
            return dicItem
        }
        dic.updateValue(dicArr[1], forKey: dicArr[0])
    }
    return dic
}

let phoneBook = updatePhoneBook(n: n)

while let line = readLine(){
    let name = line.trimmingCharacters(in: .whitespacesAndNewlines)
    if name == ""{
        break
    }else if let value = phoneBook[name]{
        print("\(name)=\(value)")
    }else{
        print("Not found")
    }
}

