//
//  NetworkManger.swift
//  testAPI
//
//  Created by asmaa gamal  on 01/03/2024.
//

import Foundation
class NetworkManger{
    static let shared = NetworkManger()
    private init(){}
    func getRequest(url:String, compilation:@escaping(Data?)->Void){
        guard let requestURl = URL(string:url) else{return}
        var request = URLRequest(url: requestURl)
        request.httpMethod = "Get"
        request.timeoutInterval = 30
        request.cachePolicy = .useProtocolCachePolicy
      
        
            let task = URLSession.shared.dataTask(with: request) { data,respons,error  in
                
                if let jsonData = data{
                    compilation(jsonData)
                }else{
                    compilation(nil)
                }
            }
            task.resume()
        
       
    }
}
