//
//  KMPAlgorithum.swift
//  Algorithms
//
//  Created by Abhishek Tripathi on 23/10/18.
//  Copyright © 2018 Abhishek Tripathi. All rights reserved.
//

import Foundation


class KMPAlgorithums {
    static let shared: KMPAlgorithums = KMPAlgorithums()
    
    private init() {
        self.naiveMatch(input: "abcdabcabcdf", match: "abcdf")
    }
}

extension KMPAlgorithums {
    
    @discardableResult
    func matchString(input: String, match: String) -> Bool {
        return true
    }
}

extension KMPAlgorithums {
    
    // KMP Algorithums
    
    // Pie Table Or LPS Tabel Longest prefix which same as longest suffix 
    @discardableResult
    func match(input: String, match: String) -> Bool {
        
        
        
        return true
    }
    
    
    // Naive Algorithm
    
    @discardableResult
    func naiveMatch(input: String, match: String) -> Bool {
        var i = 0
        var j = 0
        var matchStartIndex = 0
        while match.count > j &&  input.count > i {
            let charInput = Array(input)[i]
            let charMatch = Array(match)[j]
            print("first charcter = \(charInput), second charcter = \(charMatch) ")
            if charInput == charMatch {
                if matchStartIndex == i {
                    matchStartIndex = i
                }
                i = i + 1
                j = j + 1
            } else {
                
                matchStartIndex = matchStartIndex + 1
                i = matchStartIndex
                j = 0
            }
        }
        
        if matchStartIndex != 0 {
            return true
        }
        return false
    }
}
