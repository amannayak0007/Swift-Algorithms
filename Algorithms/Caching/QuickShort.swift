//
//  QuickShort.swift
//  Algorithms
//
//  Created by Abhishek Tripathi on 12/04/19.
//  Copyright © 2019 Abhishek Tripathi. All rights reserved.
//

import Foundation


class QuickShortImpl {
    
    static let shared: QuickShortImpl = QuickShortImpl()
    var sample: [Int] =  [10,16,8,12,15,6,3,9] 
  //  [10,80,30,90,40,50,70,100]  //[10,16,8,12,15,6,3,9] //
    /*
     Partition-Exchange Sort ===>  In worst case it takes O(n²)
     Best Case ==>  Quick Sort takes O(n log n) time and outperforms Merge and Heap Sort.
     
     Based On shorted position theory
     Quick short followed devide and concoure straitegy
     Proceeger is known as partisiting procedure
     */
    
    private init () {
        self.quickSort(input: &self.sample, start: 0, end: self.sample.count - 1)
    }
    
    func quickSort<T: Comparable>(input: inout [T], start: Int, end: Int) {
        if start < end {
            let pivot:Int = self.partition(input: &input, start: start, end: end)
            quickSort(input: &input, start: start, end: pivot - 1)
            quickSort(input: &input, start:  pivot + 1, end: end)
        } else {
            print(input)
        }
    }
    
    func partition<T: Comparable>(input: inout [T], start: Int, end: Int) -> Int {
        let pivt = input[start]
        let pivtStart = start
        var startElement = start
        var endElement = end + 1
        while startElement < endElement {
            
            repeat {
                startElement = startElement + 1
            } while pivt > input[startElement]
            
            repeat {
                endElement = endElement - 1
            }  while pivt < input[endElement]
            
            if startElement < endElement {
                input.swapAt(startElement, endElement)
            }
        }
        input.swapAt(pivtStart, endElement)
        return endElement
    }
}

