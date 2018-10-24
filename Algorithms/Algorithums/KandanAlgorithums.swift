//
//  KandanAlgorithums.swift
//  Algorithms
//
//  Created by Abhishek Tripathi on 23/10/18.
//  Copyright © 2018 Abhishek Tripathi. All rights reserved.
//

import Foundation


class KandanAlgorithums {
    static let shared: KandanAlgorithums = KandanAlgorithums()
}

extension KandanAlgorithums {
    
    @discardableResult
    func findLargestSubArrayWithGivenSum(sequense: [Int]) -> Int {
        
        var max_so_far = 0
        var max_end_here = 0
        
        for i in sequense {
            max_so_far = max_so_far + i
            if max_so_far < 0 {
                max_so_far = 0
            }
            else if max_end_here < max_so_far {
                max_end_here = max_so_far
             }
        }
        print(max_end_here)
        return max_end_here
    }
}
