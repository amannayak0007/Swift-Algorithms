//
//  Bank+CoreDataProperties.swift
//  Algorithms
//
//  Created by Abhishek Tripathi on 23/05/2019.
//  Copyright © 2019 Abhishek Tripathi. All rights reserved.
//
//

import Foundation
import CoreData


extension Bank {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Bank> {
        return NSFetchRequest<Bank>(entityName: "Bank")
    }

    @NSManaged public var id: Int64
    @NSManaged public var name: String?
    @NSManaged public var card: NSSet?
    @NSManaged public var user: NSSet?

}

// MARK: Generated accessors for card
extension Bank {

    @objc(addCardObject:)
    @NSManaged public func addToCard(_ value: FirstCard)

    @objc(removeCardObject:)
    @NSManaged public func removeFromCard(_ value: FirstCard)

    @objc(addCard:)
    @NSManaged public func addToCard(_ values: NSSet)

    @objc(removeCard:)
    @NSManaged public func removeFromCard(_ values: NSSet)

}

// MARK: Generated accessors for user
extension Bank {

    @objc(addUserObject:)
    @NSManaged public func addToUser(_ value: User)

    @objc(removeUserObject:)
    @NSManaged public func removeFromUser(_ value: User)

    @objc(addUser:)
    @NSManaged public func addToUser(_ values: NSSet)

    @objc(removeUser:)
    @NSManaged public func removeFromUser(_ values: NSSet)

}
