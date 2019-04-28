//
//  Multiplication.swift
//  LargeNumberMultiplication
//
//  Created by Abhishek Tripathi on 23/10/18.
//  Copyright © 2018 Abhishek Tripathi. All rights reserved.
//

import Foundation


class Multiplication {
    static let shared: Multiplication = Multiplication()
}


extension Multiplication {
    
    func multiplication(_ input1: String,_ input2: String) -> String {
        var counter = [Int](repeating: 0, count: input1.count+input2.count)
        var num1_index = 0
        var num2_index = 0
        
        for i in stride(from: input2.count - 1 , to: -1, by: -1) {
            let a = Array(input2)[i]
            var carry = 0
            num2_index = 0
            for j in stride(from: input1.count - 1 , to: -1, by: -1) {
                let b = Array(input1)[j]
                var number  = 0
                if counter.count > num1_index+num2_index {
                    number = counter[num1_index+num2_index]
                }
                let sum = Int("\(a)")!*Int("\(b)")! + carry + number
                carry = sum/10
                let modules = sum%10
                counter[num1_index+num2_index] = modules
                num2_index = num2_index + 1
            }
            if carry != 0 {
                counter[num2_index+num1_index] = carry
            }
            num1_index = num1_index + 1
        }
        print(counter)
        
        var result = ""
        for i in stride(from: counter.count - 1 , to: -1, by: -1) {
            result = result + "\(counter[i])"
        }
        print(result)
        return result
    }
}


