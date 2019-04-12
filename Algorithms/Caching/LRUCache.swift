//
//  LRUCache.swift
//  Algorithms
//
//  Created by Abhishek Tripathi on 12/04/19.
//  Copyright © 2019 Abhishek Tripathi. All rights reserved.
//

import Foundation

/*
 Fixed Size: Cache needs to have some bounds to limit memory usages.
 Fast Access: Cache Insert and lookup operation should be fast , preferably O(1) time.
 Replacement of Entry in case , Memory Limit is reached: A cache should have efficient algorithm to evict the entry when memory is full.
 Implementation Elements
 1. HashMap O(1) time to acess
 2. Doubly Linkedlist . Reason for choosing doubly LinkList is O(1) deletion , updation and insertion
 
 Queue which is implemented using a doubly linked list. The maximum size of the queue will be equal to the total number of frames available (cache size).The most recently used pages will be near front end and least recently pages will be near rear end.
 A Hash with page number as key and address of the corresponding queue node as value.
 
 */


class LRUNodes<Key,Element> {
    var value: Element!
    var key: Key!
    var nextNode: LRUNodes?
    var previousNode: LRUNodes?
    
    init(key: Key, value: Element) {
        self.key = key
        self.value = value
    }
}


class LRU {
    var hashMap: [String: LRUNodes<String,Int>]
    var head:LRUNodes<String, Int>?
    var tail: LRUNodes<String, Int>?
    var capacity: Int!
    
    init (capacity: Int) {
        self.capacity = capacity
        self.hashMap = [:]
    }
    
    func get(key: String) -> Int? {
        guard let data =  self.hashMap[key] else { return nil }
        self.delete(key: key)
        self.put(key: key, element: data.value)
        return data.value
    }
    
    func put(key: String, element: Int) {
        
        if hashMap.count >= capacity {
            self.addNode(key: key, element: element)
            self.deleteLastElement()
        }
        
        let newNode = LRUNodes(key: key, value: element)
        if head == nil { self.head = newNode }
        self.hashMap[key] = newNode
        newNode.nextNode = self.head
        self.head?.previousNode = newNode
        self.head = newNode
    }
    
    private func addNode(key: String, element: Int) {
        
    }
    
    func delete(key: String) {
        guard let node = self.hashMap[key] else { return }
        hashMap[key] = nil
        let previousNode = node.previousNode
        let nextNode = node.nextNode
        previousNode?.nextNode = nextNode
    }
    
    func deleteLastElement() {
        
    }
}



class LRUCacheImpl {
    
    static let shared: LRUCacheImpl = LRUCacheImpl()
    
    var lruCache: LRU
    
    private init() {
        self.lruCache = LRU(capacity: 10)
        self.lruCache.put(key: "First", element: 1)
        self.lruCache.put(key: "Second", element: 2)
        self.lruCache.put(key: "Third", element: 3)
        self.lruCache.put(key: "Fourth", element: 4)
        self.lruCache.put(key: "Fifth", element: 5)
        self.lruCache.put(key: "Six", element: 6)
        self.lruCache.put(key: "seventh", element: 7)
        self.lruCache.put(key: "eight", element: 8)
        self.lruCache.put(key: "nine", element: 9)
        self.lruCache.put(key: "tenth", element: 10)
    }
}


