//
//  ImportantQuestions.swift
//  Algorithms
//
//  Created by Abhishek Tripathi on 10/04/19.
//  Copyright © 2019 Abhishek Tripathi. All rights reserved.
//

import Foundation


class ImportantQuestions {
    /*
     
     questions:1 ===> Data Structure for Dictionary and Spell Checker?
     Answer: Hashing is one simple option for this.
     Limitations : Hashing doesn’t support operations like prefix search. Prefix search is something where a user types a prefix and your dictionary shows all words starting with that prefix
     
     Answer: Trie if Trie is, we can print all words in alphabetical order which is not possible with hashing
     Limitations: The disadvantage of Trie is, it requires lots of space
     
     Ternary Search Tree -> If space is concern, then can be preferred Ternary Search Tree, time complexcity of ternery search tree is time complexity of search operation is O(h)
     Trees also supports other operations supported by Trie like prefix search, alphabetical order printing and nearest neighbor search.
     
     If we want to support suggestions, like google shows “did you mean …”, then we need to find the closest word in dictionary. The closest word can be defined as the word that can be obtained with minimum number of character transformations (add, delete, replace).
     */
    
    
    //questions:2 ===> How to implement a stack using queue?
    //questions:3 ===> How to implement a queue using stack?
}


/* Trie Node average complecity is O(l*n) where l is average lenth of provided string and n is number of words present in trie
 
 Search Complexcity is O(l)
 Delete Complexcity is O(l*n)
 */

class TrieNode {
    var children: [Character: TrieNode] = [:]
    var isEndOff: Bool = true
    
    init() {
        self.children = [:]
        self.isEndOff = false
    }
}

class TrieImplimentation {
    static let shared: TrieImplimentation = TrieImplimentation()
    let rootNode = TrieNode()
    private init() { }
    
    func insert(string: String) {
        var current: TrieNode = rootNode
        for charecter in Array(string)  {
            let charecter: Character = charecter
            let newNode = TrieNode()
            if  rootNode.children[charecter] == nil {
                current.children[charecter] = newNode
            }
            current = newNode
        }
    }
}





