//
//  main.swift
//  아스키코드
//
//  Created by 조성지 on 2020/06/13.
//  Copyright © 2020 조성지. All rights reserved.

import Foundation

guard let chr = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines)
else { fatalError("Bad input") }

if let code = UnicodeScalar(chr)?.value{
    print(code)
}else{
    fatalError("No Ascii Mapping")
}

