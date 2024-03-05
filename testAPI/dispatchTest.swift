//
//  dispatchTest.swift
//  testAPI
//
//  Created by asmaa gamal  on 05/03/2024.
//

import Foundation
class dispatchTest{
    let lock = NSLock()
    
    var count = 0
    // 1 using lock
    func increaseCountbyLock(){
        DispatchQueue.concurrentPerform(iterations: 30, execute: { Int in
            lock.lock()
            count+=1
            lock.unlock()
        })
        print("Shared resource after concurrent modifications: \(count)")

        }
    
    let semaphore = DispatchSemaphore(value: 1)
    //by using semaphore
    func increaseCountbySemaphore(){
        DispatchQueue.concurrentPerform(iterations: 30, execute: { Int in
            semaphore.wait()
            count+=1
            semaphore.signal()
        })
        print("Shared resource after concurrent modifications: \(count)")

        }
    
    //3 Atomic Operations:
    
    var atomic = AtomicInt()
    //by using semaphore
    func increaseCountbyAtomic(){
        DispatchQueue.concurrentPerform(iterations: 30, execute: { Int in
            atomic.increment()
        
        })
        print("Shared resource after concurrent modifications: \(atomic.value)")

        }
    
}
import Foundation

class AtomicInt {
    var value: Int = 0
    private var lock = os_unfair_lock()
    
    func increment() {
        os_unfair_lock_lock(&lock)
        defer { os_unfair_lock_unlock(&lock) }
        value += 1
    }
    
    func decrement() {
        os_unfair_lock_lock(&lock)
        defer { os_unfair_lock_unlock(&lock) }
        value -= 1
    }
    
    
    
    
    /// NSOperation vs NSBlockOperation
    var blockOperation = BlockOperation()
    let operationQueue = OperationQueue()
    func testBlockOeration(){
       
        blockOperation.addExecutionBlock{
            print("first task")
        }
        blockOperation.addExecutionBlock{
            print("sec task")
        }
        operationQueue.addOperation(blockOperation)
    }
    
    class MyOperation:Operation{
        override func main(){
            
        }
    }
    let operation = MyOperation()
    func operate(){
        operationQueue.addOperation(operation)
    }
}
