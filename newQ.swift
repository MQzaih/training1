//
//  newQ.swift
//
//  Created by Asal 2 on 22/09/2020.
//  Copyright © 2020 Asal 2. All rights reserved.
//

import Foundation


class NewQueue  <T: Hashable & Comparable>{
    var valuesOfQueue:[T]=[]
    var maximumCapacity:Int?
    private  var set = Set<T>()
       init(size: Int){
           maximumCapacity=size
           valuesOfQueue.reserveCapacity(_: size)
         
       }
    
    private func addToSet (elemnt: T) -> Bool{

        if set.contains(elemnt) {
               print("It is a duplicate value")
           // print(set)
            return false
        }
            
        else{
            set.insert(elemnt)
            print("Successfully added")
          //  print(set)

            return true

        }
    }

    func insertAt (index: Int , value: T){
            if maximumCapacity != valuesOfQueue.count {
                
           let check = addToSet(elemnt: value)
           if check {
               valuesOfQueue.insert(value, at: index)
           }
           }
                
            else {
               print("Maximum Capacity, Can not be added")
           }
       }

    func sortElements(){
        valuesOfQueue = valuesOfQueue.sorted(by: { $0 < $1 } ) //placeholder to value
            }
    
    
    func removeAt (index: Int){
        let trash = valuesOfQueue[index]
        set.remove(trash)
      valuesOfQueue.remove(at: index)
    }
    
    func resizingStack(capacity: Int){
        maximumCapacity = capacity
        valuesOfQueue.reserveCapacity(_:capacity)
    }
    
    func add (value: T){
           if maximumCapacity != valuesOfQueue.count {
              let check =  addToSet(elemnt: value)
                if check {
                    valuesOfQueue.append(value)
                }
                }
               else {
                    print("Reached Maximum Capacity, Can not be added")
                }
        
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
            let trash = valuesOfQueue[0]
            set.remove(trash)
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

