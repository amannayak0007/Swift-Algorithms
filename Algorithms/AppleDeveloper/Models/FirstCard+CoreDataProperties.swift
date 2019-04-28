//
//  FirstCard+CoreDataProperties.swift
//  Algorithms
//
//  Created by Abhishek Tripathi on 23/05/2019.
//  Copyright © 2019 Abhishek Tripathi. All rights reserved.
//
//

import Foundation
import CoreData


extension FirstCard {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<FirstCard> {
        return NSFetchRequest<FirstCard>(entityName: "FirstCard")
    }

    @NSManaged public var id: Int64
    @NSManaged public var name: String?
    @NSManaged public var bank: Bank?
    @NSManaged public var user: User?

}
