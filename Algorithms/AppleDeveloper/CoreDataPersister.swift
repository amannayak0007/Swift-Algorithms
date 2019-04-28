//
//  CoreDataPersister.swift
//  Algorithms
//
//  Created by Abhishek Tripathi on 23/05/2019.
//  Copyright © 2019 Abhishek Tripathi. All rights reserved.
//

import Foundation
import CoreData

protocol Persister {
    associatedtype T
    func save<T>(object: T)
    func update<T>(object: T)
    func delete<T>(object: T)
    func fetch<T>(discription: [NSSortDescriptor], predicate: NSPredicate) -> [T]
}


class CoreDataPersister  {
    
    //static let shared: CoreDataPersister = CoreDataPersister()
    private var container: NSPersistentContainer!
    
    init() {
        self.container = NSPersistentContainer(name: "CoreData")
        self.container.loadPersistentStores { (discription, error) in
            if let error = error {
                fatalError("Failed to load Core Data stack: \(error)")
            }
        }
    }
    
    
}


extension CoreDataPersister {
 
    
}
