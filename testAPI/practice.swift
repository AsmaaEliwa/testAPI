//
//  practice.swift
//  testAPI
//
//  Created by asmaa gamal  on 11/03/2024.
//

import Foundation
class practice{
    //task
    let myTask = {
        print("i am your task")
    }
    
    //DispatchGroup

    func handleDispatchGroup(){
        let myDispatchGroup = DispatchGroup()
        
        
        myDispatchGroup.enter()
        concurenQueue.async {
            print("first in DispatchGroup")
            myDispatchGroup.leave()
        }
       
         myDispatchGroup.enter()
        concurenQueue.async {
            print("second in DispatchGroup")
            myDispatchGroup.leave()
        }
      
        myDispatchGroup.notify(queue: .main){
            print("all Done")
        }
    }
    
    
    
    
    //DispatchWorkItem
    let myWorkItem = DispatchWorkItem{
        print("i am your work item")
    }
//    myWorkItem.perform()
//    myWorkItem.cancel()
//    myWorkItem.wait()
//    myWorkItem.isCancelled
    
    
//    Grand Central Dispatch (GCD):
//
//    Dispatch Queues: Serial and Concurrent
    let serialQueue = DispatchQueue(label: "mySerialQueu")
    let concurenQueue = DispatchQueue.init(label: "myConcurrentQueue",attributes: .concurrent)
    
//    Dispatching Tasks Asynchronously and Synchronously:
    func testQueue(){
        serialQueue.sync(execute: myTask)
        concurenQueue.async(group: myDispatchGroup, execute: myWorkItem)
        
        
    }
    
//    Dispatching Tasks After a Certain Delay:
    let delay = DispatchTime.now() + .seconds(30)
    func addWithDelay(){
        serialQueue.asyncAfter(deadline:delay , execute: myTask)
    }
    
//    Dispatch Semaphores
    func handleSemaphole(){
        let mySemaphore = DispatchSemaphore(value: 1) //1, meaning only one thread can access the protected resource (critical section) at a time.
        mySemaphore.wait() // decrements the semaphore's count by 1. If the count is already zero, this call will block the current thread until another thread signals (increments) the semaphore.
        print("hello semaphore")
        mySemaphore.signal() // increments the semaphore's count by 1, allowing another waiting thread to access the critical section if any.
    }
    
    
    
    
//    Dispatch Barrier
    
    func handleBarrier(){
        concurenQueue.async(flags: .barrier){ //no read or write operations will be interleaved with the write operation specified inside this block. Once all previously scheduled blocks complete, the barrier block will execute, ensuring mutual exclusion during its execution.
//            write operation
        }
        concurenQueue.async{ //If a read operation is attempted while the barrier is executing its write operation, the read operation will be blocked until the barrier completes its write operation. This behavior is inherent in the use of the .barrier flag in GCD.
//            read operation
        }
    }
    
    

}
