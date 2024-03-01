//
//  Fav+CoreDataProperties.swift
//  testAPI
//
//  Created by asmaa gamal  on 01/03/2024.
//
//

import Foundation
import CoreData


extension Fav {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Fav> {
        return NSFetchRequest<Fav>(entityName: "Fav")
    }

    @NSManaged public var timestamp: Date?
    @NSManaged public var countryName: String?
    @NSManaged public var flag: String?

}

extension Fav : Identifiable {

}
