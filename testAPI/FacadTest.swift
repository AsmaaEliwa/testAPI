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
