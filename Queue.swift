//
//  main.swift
//  Queue
//
//  Created by Asal 2 on 20/09/2020.
//  Copyright © 2020 Asal 2. All rights reserved.
//

import Foundation

class Queue <T> {
    var valuesOfQueue:[T]=[]
    
    func add (value: T){
        valuesOfQueue.append(value)
    }
    
    func dequeue () -> T {
        if isEmpty(){
            print("This is Empty Queue")
            return nil!
        }
        else {
            let value=valuesOfQueue.first
            return value!
        }
    }
    func remove (){
        if isEmpty(){
            print("Empty Queue")
        }
        else {
            valuesOfQueue.remove(at: 0)
            print("removed")
            
        }
    }
    
    func isEmpty() -> Bool {
        if(valuesOfQueue.count==0){
        return true
        }
        else{
        return false;
        }
    }
    
    
}



