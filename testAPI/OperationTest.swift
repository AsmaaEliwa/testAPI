//
//  OperationTest.swift
//  testAPI
//
//  Created by asmaa gamal  on 01/03/2024.
//

import Foundation
//class OperationTest{
    class MyOperation:Operation{
//        override init(){
//            
//            handleOperation()
//            
//        }
      
        override func main(){
            print("\(self.name ?? "Operation") is executed ")
            
            
        }
        
        
    }
func handleOperation(){
    let operationQueue = OperationQueue()
    
    let operation1 = MyOperation()
    operation1.name = "operation1"
    
    let operation2 = MyOperation()
    operation2.name = "operation2"
    
    let operation3 = MyOperation()
    operation3.name = "operation3"
    
    
    operation2.addDependency(operation1)
    operation3.addDependency(operation2)
    operationQueue.addOperations([operation1, operation3,operation2], waitUntilFinished: false)
//    DispatchQueue.main.async{
//        operation1.cancel()
//    }
//    operationQueue.waitUntilAllOperationsAreFinished()
    RunLoop.current.run() //
    print("all operations done")
    let serialQueue = OperationQueue()
    serialQueue.maxConcurrentOperationCount = 1 // converting it to be serial queue
}
    
    
//}
