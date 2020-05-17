//
//  main.swift
//  Operation
//
//  Created by 조성지 on 2020/05/17.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

// Complete the solve function below.
func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void{
    let tip = meal_cost/100*Double(tip_percent)
    let tax = meal_cost/100*Double(tax_percent)
    let totalCost = meal_cost + tip + tax
    print(Int(round(totalCost)))
}

guard let meal_cost = Double((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else{
    fatalError("Bad input")
}

guard let tip_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else{
    fatalError("Bad input")
}

guard let tax_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else {
    fatalError("Bad input")
}

solve(meal_cost: meal_cost, tip_percent: tip_percent, tax_percent: tax_percent)

