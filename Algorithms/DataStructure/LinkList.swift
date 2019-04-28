//
//  LinkList.swift
//  Algorithms
//
//  Created by Abhishek Tripathi on 25/03/19.
//  Copyright © 2019 Abhishek Tripathi. All rights reserved.
//

/*
   Important Notes --> Bidirectional associations using value types in Swift
   Because structure allocate his memory in (stack) on compile time so when you take recursevely then it will create an issue


 */

import Foundation

class LinkListNode<T> where T: Equatable {
    var data: T!
    var nextNode: LinkListNode?
    
    init(data: T) {
        self.data = data
    }
}

extension LinkListNode: Equatable {
    static func == (lhs: LinkListNode<T>, rhs: LinkListNode<T>) -> Bool {
        return lhs.data == rhs.data
    }
}


class LinkList {
    
    var rootNode: LinkListNode<Int>?
    
    func addNode(node: Int) {
        if self.rootNode == nil {
            self.rootNode = LinkListNode(data: node)
        } else {
            var previousNode = self.rootNode
            var nextNode: LinkListNode? =  self.rootNode?.nextNode
            while (nextNode != nil) {
                previousNode = nextNode
                nextNode = nextNode?.nextNode
            }
            previousNode?.nextNode = LinkListNode(data: node)
        }
    }
}

extension LinkList: CustomStringConvertible {
    
    var description: String {
        var string: String = ""
        var newNode =  self.rootNode
        while newNode != nil {
            string = string + "\(newNode!.data!)" + "  ---->  "
            newNode = newNode?.nextNode
        }
        return string
    }
    
}

class LinkListRealImplimentation {
    
    static let shared: LinkListRealImplimentation = LinkListRealImplimentation()
    
    var linkList: LinkList!
    
     var linkList1: LinkList!
     var linkList2: LinkList!
    
    private init() {
        self.linkList = LinkList()
        self.linkList.addNode(node: 1)
        self.linkList.addNode(node: 2)
        self.linkList.addNode(node: 3)
        self.linkList.addNode(node: 4)
        self.linkList.addNode(node: 5)
        self.linkList.addNode(node: 7)
        self.linkList.addNode(node: 7)
        self.linkList.addNode(node: 8)
        self.linkList.addNode(node: 8)
        self.linkList.addNode(node: 10)
        self.linkList.addNode(node: 11)
        print(self.linkList.description)
        // self.reverseLinkList()
        // self.removeDuplicate()
        
        
        self.linkList1 = LinkList()
        self.linkList2 = LinkList()
        
        
        self.linkList1.addNode(node: 1)
        self.linkList2.addNode(node: 2)
        self.linkList1.addNode(node: 3)
        self.linkList2.addNode(node: 4)
        self.linkList1.addNode(node: 5)
        self.linkList2.addNode(node: 6)
        self.linkList1.addNode(node: 7)
        self.linkList2.addNode(node: 8)
        self.linkList1.addNode(node: 9)
        self.linkList2.addNode(node: 10)
        self.linkList1.addNode(node: 11)
        
        self.merge(node1: linkList1.rootNode, node2: linkList2.rootNode)
        
        
 
    }
    
    
    // Question 1 --> Delete the elements in an linked list whose sum is equal to zero
    
    // 1 --> 2 --> 3 --> 4 --> -5 --> -3 ---> 2
    
    func deleteElement() {
        
    }
    
    func reverseLinkList() {
        var previousNode: LinkListNode<Int>?  = nil
        var currentNode: LinkListNode<Int>? = self.linkList.rootNode
        var nextNode: LinkListNode<Int>? = nil
        
        while currentNode != nil {
            nextNode = currentNode?.nextNode
            currentNode?.nextNode = previousNode
            previousNode = currentNode
            currentNode =  nextNode
        }
        self.linkList.rootNode = previousNode
        print(self.linkList.description)
    }
    
    func removeDuplicate () {
        var currentnode = self.linkList.rootNode
        while currentnode?.nextNode != nil {
            if currentnode?.nextNode?.data == currentnode?.data {
                currentnode?.nextNode = currentnode?.nextNode?.nextNode
            } else {
                currentnode = currentnode?.nextNode
            }
        }
        
        
        print(self.linkList.description)
    }
    
    func findCyclicLoop() {
        // dedect a loop and remove the loop from it
        var node = self.linkList.rootNode
        var fastPointer = self.linkList.rootNode
        
        while (fastPointer != nil && node != nil) {
            if fastPointer == node {
                break
            }
            node = node?.nextNode
            fastPointer = fastPointer?.nextNode?.nextNode
        }
    }
    
    // Remove the loop
    func removeLoop(head: LinkListNode<Int>, loopNode: LinkListNode<Int>) {
        var ptr1 = head
        var ptr2 = loopNode
        
        while true {
            while ptr2.nextNode?.data != ptr2.data {
                ptr2 = ptr2.nextNode!
            }
            //            if ptr1.data == ptr2.data {
            //                ptr2.nextNode =
            //            }
        }
    }
    
    //  10 --> 20 --> 30 --> 40 --> 50 --> 60
    // 50->60->10->20->30->40
    
    /*
     // 1) Given a singly linked list, swap every 2 nodes, for odd number of input; retain the last node as it is.
     Eg: Input: 5 13 15 18 20 11 6 7
     Output: 13 5 18 15 11 20 7 6
     I was asked to write the code straight-away.
     Wrote the same, verified boundary cases and discussed. */
    
    
    // question 1: --> Delete n nodes after m nodes of a linked list. // Very simpale question no need to solve
    // question 2: --> Merge a linked list into another linked list at alternate positions.
    
    // first link list 1,3,5,7,9,11,13
    // second link list 2,4,6,8,10,12
    
    // Merge a linked list into another linked list at alternate positions.
    
    func merge(node1: LinkListNode<Int>?, node2: LinkListNode<Int>?) {
        var firstLink = node1
        var secondlink = node2
        while firstLink != nil && secondlink != nil {
            let nextNode = firstLink?.nextNode
            firstLink?.nextNode = secondlink
            firstLink?.nextNode?.nextNode = nextNode
            secondlink = secondlink?.nextNode
            firstLink = firstLink?.nextNode?.nextNode
        }
        
        print(firstLink)
    }
    
    
    
  //   Merge two sorted linked lists
    
      // 1-> 3 -> 5
     // 2-> 4
 
    func sortedLinkListMerge(first: LinkListNode<Int>, second: LinkListNode<Int>) -> LinkListNode<Int>? {
        
        var firstList:LinkListNode<Int>? = first
        var secondList:LinkListNode<Int>? = second
        let dummyNode = LinkListNode(data: -1)
        var tail:LinkListNode<Int>? = dummyNode
        tail?.nextNode = nil
        
        while true {
            
            if firstList == nil {
               // ittrate  all list remove node
                break
            }
            
            if secondList == nil {
                // ittrate  all list and tail node
                break
            }
            
            if first.data < second.data {
                tail?.nextNode = LinkListNode(data: first.data)
                firstList = firstList?.nextNode
            } else {
                tail?.nextNode = LinkListNode(data: second.data)
                secondList = secondList?.nextNode
            }
            
            tail = tail?.nextNode
            
        }
        
        return dummyNode.nextNode
    }
    
    private func changeRefrense() {
        
    }
}
