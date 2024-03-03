//
//  FacadTest.swift
//  testAPI
//
//  Created by asmaa gamal  on 01/03/2024.
//

import Foundation
class Engine{
    func start(){
        
    }
    func stop(){
        
    }
}
class Light{
    func on(){
        
    }
    func off(){
        
    }
}
class Music{
    func play(){
        
    }
    func stop(){
        
    }
}

class Car{
    var engin = Engine()
    var light = Light()
    var music = Music()
    func startCar(){
        engin.start()
        light.on()
        music.play()
    }
    func stoptCar(){
        engin.stop()
        light.off()
        music.stop()
    }
   
}




//let payload = {
//  "aps": {
//    "alert": {
//      "title": "New Message",
//      "body": "You have received a new message"
//    },
//    "badge": 3,
//    "sound": "default",
//    "category": "MESSAGE_CATEGORY",
//    "mutable-content": 1
//  },
//  "custom_key": "custom_value",
//  "data": {
//    "key1": "value1",
//    "key2": "value2"
//  },
//  "content-available": 1,
//  "attachment-url": "https://example.com/image.jpg",
//  "expiration_date": "2024-02-29T12:00:00Z",
//  "collapse-id": "message123",
//  "thread-id": "conversation456"
//}
