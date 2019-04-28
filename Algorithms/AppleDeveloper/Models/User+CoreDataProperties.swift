//
//  User+CoreDataProperties.swift
//  Algorithms
//
//  Created by Abhishek Tripathi on 23/05/2019.
//  Copyright © 2019 Abhishek Tripathi. All rights reserved.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var address: String?
    @NSManaged public var id: Int64
    @NSManaged public var image: NSData?
    @NSManaged public var name: String?
    @NSManaged public var card: NSSet?

}

// MARK: Generated accessors for card
extension User {

    @objc(addCardObject:)
    @NSManaged public func addToCard(_ value: FirstCard)

    @objc(removeCardObject:)
    @NSManaged public func removeFromCard(_ value: FirstCard)

    @objc(addCard:)
    @NSManaged public func addToCard(_ values: NSSet)

    @objc(removeCard:)
    @NSManaged public func removeFromCard(_ values: NSSet)

}
