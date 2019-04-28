//
//  SwiftQueue.swift
//  Algorithms
//
//  Created by Abhishek Tripathi on 15/05/2019.
//  Copyright © 2019 Abhishek Tripathi. All rights reserved.
//

import Foundation




//class SwiftQueue<Elemant> where Elemant: Equatable {
//
//    init(){ }
//
//    private var list: LinkListNode<Elemant>?
//
//    //  question 1 "How to implement a stack using queue?"
//
//    var rear: Elemant? {
//        return self.list?.data
//    }
//
//    var front: Elemant? {
//        var currentNode = self.list
//        while currentNode?.nextNode != nil {
//            currentNode = currentNode?.nextNode
//        }
//        return currentNode as? Elemant
//    }
//
//    func nqueue(element: Elemant) {
//        let head = LinkListNode(data: element)
//        if list == nil {
//            self.list = head
//        } else {
//            let head = LinkListNode(data: element)
//            head.nextNode = self.list
//            self.list = head
//        }
//    }
//
//    func dequeue(element: Elemant) -> Elemant? {
//        return front
//    }
//}



struct SwiftQueue<Elemant>{
    
    var items:[Elemant] = []
    
    mutating func enqueue(element: Elemant) {
        items.append(element)
    }
    
    mutating func dequeue() -> Elemant?  {
        if items.isEmpty {
            return nil
        }
        else{
            let tempElement = items.first
            items.remove(at: 0)
            return tempElement
        }
    }
    
    var rear: Elemant? {
        return self.items.last
    }
    
    var front: Elemant? {
        return self.items.first
    }
}
