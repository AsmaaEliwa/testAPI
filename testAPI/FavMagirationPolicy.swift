//
//  FavMagirationPolicy.swift
//  testAPI
//
//  Created by asmaa gamal  on 03/03/2024.
//

import Foundation
import CoreData
class FavMagirationPolicy:NSEntityMigrationPolicy{
    override func createDestinationInstances(forSource sInstance: NSManagedObject, in mapping: NSEntityMapping, manager: NSMigrationManager) throws {
        if sInstance.entity.name == "Fav"{
            
            let countryName = sInstance.value(forKey: "countryName") as? String
            let flag = sInstance.value(forKey: "flag") as? String
            let newFavEntity  = NSEntityDescription.insertNewObject(forEntityName: "Fav", into: manager.destinationContext)
            newFavEntity.setValue(countryName, forKey: "countryName")
            newFavEntity.setValue(flag, forKey: "countryFlag")
        }
    }
}
