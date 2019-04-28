//
//  RealTimeProblem.swift
//  Algorithms
//
//  Created by Abhishek Tripathi on 15/05/2019.
//  Copyright © 2019 Abhishek Tripathi. All rights reserved.
//

import Foundation


class RealTimeProblem {
    
    static let shared: RealTimeProblem = RealTimeProblem()
    private init(){ }
}


class StackUsingQueue<Element> where Element: Equatable {
    
    private var queue: SwiftQueue<Element> = SwiftQueue()
    
    public func push(element: Element) {
        queue.enqueue(element: element)
        while queue.front != element  {
            if let element =  queue.dequeue() {
                queue.enqueue(element: element)
            }
        }
    }
    
    public func pop () -> Element? {
        return self.queue.dequeue()
    }
}


class MedainSortedArray {
    
    func findMideanSortedArray(input1: [Int], input2: [Int]) -> Int {
        if input1.count > input2.count {
            return findMideanSortedArray(input1: input2, input2: input1)
        }
        let x = input1.count
        let y = input2.count
        var low = 0
        var high = x
        
        while low < high {
            let partitionX = (low+high)/2
            let partitionY =  ((x+y+1)/2) - partitionX
            let leftMaxX = partitionX == 0 ? Int.min : input1[partitionX-1]
            let rightMinX = partitionX == x ? Int.max : input1[partitionX+1]
            let leftMaxY = partitionY == 0 ? Int.min : input2[partitionY-1]
            let rightMinY = partitionY == y ? Int.max : input2[partitionY+1]
            if leftMaxX < rightMinY && rightMinX > leftMaxY {
                if (x+y)%2 == 0 {
                    return ( max(leftMaxX, leftMaxY) + min(rightMinY, rightMinX) )/2
                } else {
                     return max(leftMaxX , leftMaxY)
                }
            } else if leftMaxX > rightMinY {
                high = partitionX - 1
            } else {
                low = partitionX + 1
            }
        }
        return 0
    }
}


class SpirelMatrix {
    /*
   
   func printSpirealForm(matrix: [[Int]]) {
        var xstart = 0
        var xend = matrix.count
        var ystart = 0
        var yend = matrix[0].count
        
        
        // for horizantal movement
        
        for i in xstart...xend {
            print(matrix[ystart][i])
        }
        ystart = ystart + 1
        
        for i in xstart...xend {
            print(matrix[ystart][i])
        }
        ystart = ystart + 1
        
     }
    
    */

}


 
