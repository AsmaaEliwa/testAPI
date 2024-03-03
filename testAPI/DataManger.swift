//
//  DataManger.swift
//  testAPI
//
//  Created by asmaa gamal  on 01/03/2024.
//

import Foundation
import CoreData
class DataManger{
    
    static let shared = DataManger()
    private init(){
        
    }
    
    lazy var persistentContainer : NSPersistentContainer = {
        let container = NSPersistentContainer(name: "testAPI")
        container.loadPersistentStores { _, error in
            if let pError = error{
                print(pError)
            }else{
                print("loadded")
            }
        }
        return container
    }()
    
    
    func saveCountryToFav(country:CountryModel){
        if let entity = NSEntityDescription.entity(forEntityName: "Fav", in: persistentContainer.viewContext){
            let favCountry = NSManagedObject(entity: entity, insertInto: persistentContainer.viewContext)
            favCountry.setValue(country.name.countryName, forKey: "countryName")
            favCountry.setValue(country.flag, forKey: "countryFlag")
            
            do {
                try persistentContainer.viewContext.save()
                print("savedToVaf")
            }catch{
                print(error)
            }
        }
    }
    
    func fetchFavCountries(compilation:@escaping([Fav?])->Void){
        let request : NSFetchRequest<Fav> = Fav.fetchRequest()
        do{
            let result = try persistentContainer.viewContext.fetch(request)
            compilation(result)
        }catch{
            print(error)
        }
    }
    
    
    
    
}
