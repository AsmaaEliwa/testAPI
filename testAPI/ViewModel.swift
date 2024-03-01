//
//  ViewModel.swift
//  testAPI
//
//  Created by asmaa gamal  on 01/03/2024.
//

import Foundation
class ViewModel : ObservableObject{
    static let shared = ViewModel()
   private  init(){
        fetchFavs()
    }
    @Published var favCountries : [Fav?] = []
    let dataManger = DataManger.shared
    func saveToFav(country:CountryModel){
        dataManger.saveCountryToFav(country: country)
    }
    func fetchFavs(){
        dataManger.fetchFavCountries { favs in
            
                self.favCountries = favs
            
        }
    }
}
