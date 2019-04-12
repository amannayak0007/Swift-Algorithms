//
//  ArrayQuestion.swift
//  Algorithms
//
//  Created by Abhishek Tripathi on 04/04/19.
//  Copyright © 2019 Abhishek Tripathi. All rights reserved.
//

import Foundation

/*

 1. Array ——————————
 * How do you find the missing number in a given integer array of 1 to 100? (solution)
 * How do you find the duplicate number on a given integer array? (solution)
 * How do you find the largest and smallest number in an unsorted integer array? (solution)
 * How do you find all pairs of an integer array whose sum is equal to a given number? (solution)
 * How do you find duplicate numbers in an array if it contains multiple duplicates? (solution)
 * How are duplicates removed from a given array in Java? (solution)
 * How is an integer array sorted in place using the quicksort algorithm? (solution)
 * How do you remove duplicates from an array in place? (solution)
 * How do you reverse an array in place in Java? (solution)
 * How are duplicates removed from an array without using any library? (solution)
 */

class ArrayQuestion {
    
    static let shared: ArrayQuestion = ArrayQuestion()
    
    var sample: [Int] = [0,1,2,3,4,6,7,8,9]
    
    var duplicateSample: [Int] = [0,1,2,4,4,5,3,8,9] // where n = 8
    
    private init () {   }
    
    // 1. How do you find the missing number in a given integer array of 1 to 100? (solution)
    func missing() -> Int {
        let excpectedSum = ((sample.count) * (sample.count + 1))/2
        let actualSum = sample.reduce(0, +)
        let missing = excpectedSum - actualSum
        return missing
    }
    
    // 2. How do you find the duplicate number on a given integer array? (solution)
    
    // Answer : Duplicate Element In array By using HashMap but it will take O(n) But it will Take some extra space
    // Second Solution XOR
    
    
    /// Question 2 First answer
    func duplicateElementFirstAnswer() {
        var a = [6,4,3,2,5,1,7,5,4]
        for i in 0...a.count - 1 {
            if a[abs(a[i])] > 0 {
                a[abs(a[i])] = -a[abs(a[i])]
            } else {
                print("negative element is == \(a[i])")            }
        }
    }
    
    /// Question 2 Second Answer -- Comming soon using XOR
    /// Question 2 Third Answer -- Using HashMap
    
    // question 3 --> How do you find the largest and smallest number in an unsorted integer array?
    // Answer --> Very simpale Answer using two constant
    
    
    // question 4 --> How do you find all pairs of an integer array whose sum is equal to a given number?
      //  Answer Solve By
    
    
    // First Answer -> Space complexcity O(n)
    //                 Time  complexcity O(n)
    
    // Step 1 - Make array to set
    // itreate array and check sum - a[i] set contain any element
    
    // Second Answer -> Space complexcity O(1)
    //                 Time  complexcity O(nlogn)
    
    // Short the array
    // itreate array using l and r , l start from starting and r start for ending
    
    
    
    
}



/*
 Question 1: Choose atleast two elements from array such that their GCD is 1 and cost is minimum
            Input: arr[] = {5, 10, 12, 1}, cost[] = {2, 1, 2, 6}
            Output: 4
            {5, 12} is the required subset with cost = 2 + 2 = 4
 */
