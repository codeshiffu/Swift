//
//  ViewController.swift
//  GCD
//
//  Created by Sarika Thakur on 2021/03/23.
//  Copyright © 2021 Sarika Thakur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        callSerialQueue()
//        callConcurrentQueue()
        callOperationQueue()
        
        
    }
    
    
    func callSerialQueue() {
        let serialQueue = DispatchQueue(label: "serialQueue")
        
        serialQueue.async {
            for _ in 0...20 {
                print("*******")
            }
        }
        
        
        serialQueue.async {
            for _ in 0...20 {
                print("%%%%%%%%")
            }
        }

    }
    
    
    func callConcurrentQueue(){

        for _ in 0...20 {
            print("&&&&&&")
        }
        
        let concurrentQueue = DispatchQueue(label: "concurrentQueue", qos: .background, attributes: .concurrent)
        
        concurrentQueue.async {
            for _ in 0...20 {
                print("*******")
            }
        }
        
        concurrentQueue.async {
            for _ in 0...20 {
                print("$$$$$$$")
            }
        }
        
        concurrentQueue.async {
            for _ in 0...20 {
                print("@@@@@@@@")
            }
        }
        

        let userInteractedConcurrentQueue = DispatchQueue(label: "concurrentQueue", qos: .userInteractive, attributes: .concurrent)

        userInteractedConcurrentQueue.async {
            for _ in 0...20 {
                print("%%%%%%%%")
            }
        }
    }
    
    func callOperationQueue() {
        
        let operationQueue = OperationQueue()
        
        let userBlockOperation = BlockOperation()
        userBlockOperation.qualityOfService = .background
        userBlockOperation.addExecutionBlock {
            for _ in 0...20 {
                print("********")
            }
        }
        
        userBlockOperation.addExecutionBlock {
            for _ in 0...20 {
                print("0000000")
            }
        }
        
        userBlockOperation.addExecutionBlock {
            for _ in 0...20 {
                print("&&&&&&&&&")
            }
        }

        let dependentBlockOperation = BlockOperation()
        dependentBlockOperation.qualityOfService = .userInteractive
        dependentBlockOperation.addExecutionBlock {
            for _ in 0...20 {
                print("%%%%%%%%")
            }
        }
        
        userBlockOperation.addDependency(dependentBlockOperation)
//        dependentOperationQueue.addDependency(userOpertionQueue)
        
        operationQueue.addOperations([dependentBlockOperation, userBlockOperation], waitUntilFinished: false)

//        userOpertionQueue.start()
        dependentBlockOperation.start()
//        dependentBlockOperation.res()
        operationQueue.isSuspended = true
        
        
    }

}

/*
 
 Threads
 Queue
 Serial Queue
 Concurrent Queue
 Sync Task
 Async
 
 
 Main Thread -
 Global thread
 Background Queue
 
 GCD - Grand Central Dispatch - Cancel
 Opertion Queue - Control- Pause, Cancel, Resume, Dependenices
 
 Race Condition - NSLock
 
 */
