//
//  AssociatedType.swift
//  Algorithms
//
//  Created by Abhishek Tripathi on 24/10/18.
//  Copyright © 2018 Abhishek Tripathi. All rights reserved.
//


// class is use to understand genric and and associate type problem to solve


import Foundation

//PATs can’t be used in any of those places. They can only be used in the <>s
//    func extend<T>(_: Collection, withNewElems: Collection) -> [T] {
//There are two problems here. Firstly, this type signature won’t stop people passing in two different-type Collections, like an array of Ints and an array of Strings. Secondly, we’ve got this bizarre compiler error:

// protocol 'Collection' can only be used as a generic constraint because it has Self or associated type requirements
//    }

class AssociatedType {
    
    init() { }
    
    func extend<T: Collection>(_ base: T, withNewElems: T) -> T {
        // Ignore the function body for now,
        // we’re just trying to make it compile.
        return base
    }
    
    //    func extend<T: Collection, U: Collection>(_ base: T, withNewElems: U) -> [T.Iterator.Element]
    //        where T.Iterator.Element == U.Iterator.Element,
    //        T.Iterator.Element: Equatable {
    //            let newElems = withNewElems.filter { !base.contains($0) }
    //            return Array(base) + newElems
    //    }
    
    // Protocol 'Collection' can only be used as a generic constraint because it has Self or associated type requirements
    
    func appendArray<T: Collection, U: Collection>(input: T , input2: U) -> T where U.Iterator.Element == T.Iterator.Element, T.Iterator.Element: Equatable {
        return input
    }
}



protocol Container {
    associatedtype Item
    mutating func append(_ item: Item)
    var count: Int { get }
    subscript(i: Int) -> Item { get }
    //    associatedtype Iterator: IteratorProtocol where Iterator.Element == Item
    //    func makeIterator() -> Iterator
}



class Genrics {
    
    //  Generic code enables you to write flexible, reusable functions and types that can work with any type, subject to requirements that you define. You can write code that avoids duplication and expresses its intent in a clear, abstracted manner.
    
    // In all three functions, the types of a and b must be the same. If a and b aren’t of the same type, it isn’t possible to swap their values. Swift is a type-safe language, and doesn’t allow (for example) a variable of type String and a variable of type Double to swap values with each other. Attempting to do so results in a compile-time error.
    
    // The brackets tell Swift that T is a placeholder type name within the swapTwoValues(_:_:) function definition. Because T is a placeholder, Swift doesn’t look for an actual type called T.
    
    //    struct IntStack<Element> {
    //        var items = [Element]()
    //        mutating func push(_ item: Element) {
    //            items.append(item)
    //        }
    //        mutating func pop() -> Element {
    //            return items.removeLast()
    //        }
    //    }
    
    //Generic Where Clauses
    
    //Extending a Generic Type
}


struct IntStack<Element>: Container  {
    typealias Item = Element
    
    var count: Int
    
    var items = [Element]()
    
    mutating func push(_ item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element {
        return items.removeLast()
    }
    
    func findIndexaaaaa(of valueToFind: Element) -> Int? {
        return 12
    }
    
    subscript(i: Int) -> Element {
        return items[i]
    }
    
    mutating func append(_ item: Element) {
        items.append(item)
    }
}


extension IntStack where Element: Hashable {
    
    var topItem: Element? {
        return items.count > 0 ? items[items.count - 1] : nil
    }
    
    func findIndex(of valueToFind: Element) -> Int? {
        for (index, value) in items.enumerated() {
            if value == valueToFind {
                return index
            }
        }
        return nil
    }
}


extension Container where Item: Equatable {
    func startsWith(_ item: Item) -> Bool {
        return count >= 1 && self[0] == item
    }
}



