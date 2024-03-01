//
//  APIManger.swift
//  testAPI
//
//  Created by asmaa gamal  on 01/03/2024.
//

import Foundation
class APIManger: ObservableObject{
    static let shared = APIManger()
    @Published var countries : [CountryModel] = []
    private init(){
        getCountries()
    }

    func getCountries(){
        let url = "https://restcountries.com/v3.1/all"
        let decoder = JSONDecoder()
        NetworkManger.shared.getRequest(url:url) { data in
            if let jsonData = data {
                do{
                    let result = try decoder.decode([CountryModel].self, from: jsonData)
                    DispatchQueue.main.async{
                        self.countries = result
                    }
                }catch{
                    print(error)
                    
                }
            }
        }
    }
    
}
