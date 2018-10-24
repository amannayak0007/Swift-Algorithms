//
//  MultiplicationSpec.swift
//  AlgorithmsTests
//
//  Created by Abhishek Tripathi on 23/10/18.
//  Copyright © 2018 Abhishek Tripathi. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import Algorithms

class MultiplicationSpec: QuickSpec {
    
    override func spec() {
        describe("Test Large Number multiplication") {
            let shared = Multiplication.shared
            context("if shared instancse is loaded ") {
                it("check Multiplication of two result input = 123456 and 123456789") {
                    let multiplication = shared.multiplication("123456", "123456789")
                    expect(multiplication).to(contain("15241481342784")) }
                it("check Multiplication of two result input = 123456 and 12345678") {
                    let multiplication = shared.multiplication("123456", "12345678")
                    expect(multiplication).to(contain("1524148023168")) }
                it("check Multiplication of two result input = 123456 and 123456789") {
                    let multiplication = shared.multiplication("123456", "1234567")
                    expect(multiplication).to(contain("152414703552")) }
                it("check Multiplication of two result input = 123456 and 123456789") {
                    let multiplication = shared.multiplication("1234563232323", "1234567")
                    expect(multiplication).toNot(equal("123456323232324239247492497474297472942744")) }
            }
        }
    }
}

