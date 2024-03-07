//
//  SOLID.swift
//  testAPI
//
//  Created by asmaa gamal  on 07/03/2024.
//

import Foundation

//S SINGLE RESPONSIPLITY
//bad example
class acount{
    func showBalance(){
        
    }
    func addNewUser(){
        
    }
}
//good example
class singlrResponsibilityAcount {
    func showBalance(){
        
    }
}
class NewAcount {
    func addNewUser(){
        
    }
}


//o open closed prenciple
//bad example
class Shape{
    func calculateArea(){
    }
}
class Rectangle:Shape{
    override func calculateArea(){
        
    }
  
}
//good example
protocol shape{
    func calculateArea()
}
class openClosedRectangle:shape{
    func calculateArea() {
        //implement the function
    }
    
    
}



//l Liskov Substitution Principle (LSP)
//class Shape{
//    func calculateArea(){
//    }
//}
class Square:shape{
    func calculateArea() {
        
    }
    
    
}
class Circle:shape{
    func calculateArea() {
        
    }
}


//i Interface Segregation Principle (ISP)
//bad example
protocol product{
    func A()
    func B()
    func C()
}

class ProductA:product{
    func B() {
        
    }
    
    func C() {
        
    }
    
    func A(){
        
    }
}
//good example
protocol product1{
    func A()
   
}
protocol product2{
    func B()
   
}
protocol product3{
    func C()
   
}
class ProductA1:product1{
    func A() {
        
    }
    
  
}

//d dependancy inversion
protocol CarSwitch{
    func start()
}
class CarEngine{
var name:String
    init(enginename:String){
        name = enginename
    }
}
class car{
var engine:CarEngine
    init(myEngine:CarEngine){
        engine = myEngine
    }
}
