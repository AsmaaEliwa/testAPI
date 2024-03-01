//
//  CountryModel.swift
//  testAPI
//
//  Created by asmaa gamal  on 01/03/2024.
//

import Foundation
struct CountryModel:Codable, Hashable{
    let name: NameModel
    let flag:String
}
struct NameModel:Codable,Hashable{
    var countryName: String
    private enum CodingKeys: String, CodingKey {
        case countryName = "common"
    }
    
  
}
