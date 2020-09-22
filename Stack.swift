//
//  main.swift
//  Stack
//
//  Created by Asal 2 on 20/09/2020.
//  Copyright © 2020 Asal 2. All rights reserved.
//

import Foundation

class Stack <T: Hashable & Comparable>{
    var maximumCapacity:Int?
    var valuesOfStack = [T] ()
    var set = Set<T>()
    init(){
        maximumCapacity = valuesOfStack.count;
    }
    
/* func Distinct() {
        valuesOfStack = Array (Set(valuesOfStack))
       
    }*/
    
    func addToSet (elemnt: T) -> Bool{
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
    
func sortElements(){
    valuesOfStack = valuesOfStack.sorted(by: { $0 < $1 } ) //placeholder to value
        
        
    }
    
    
    func insertAt (index: Int , value: T){
let check = addToSet(elemnt: value)
        if check {
            valuesOfStack.insert(value, at: index)
        }

    }
    
    func removeAt (index: Int){
        let trash = valuesOfStack[index]
        set.remove(trash)
      valuesOfStack.remove(at: index)
    }
    
    func resizingStack(capacity: Int){
        valuesOfStack.reserveCapacity(_:capacity)
        maximumCapacity=valuesOfStack.count
        print(maximumCapacity)
    }
     
  
    func push (value: T){
      //  Distinct()
      let check =  addToSet(elemnt: value)
        if check {
            valuesOfStack.append(value)
            maximumCapacity = maximumCapacity! + 1
        }
        
    }
    
    func pop (){
        if isEmpty() {
            print("Stack is Empty")
        }
        let trash = peek()
        set.remove(trash!)
        valuesOfStack.removeLast()
        maximumCapacity = maximumCapacity! - 1

        
    }
    func peek()-> T? {
        if isEmpty(){
            print("Stack is Empty")
            return nil
        }
        return valuesOfStack.last;
    }
    
    func isEmpty()-> Bool {
        if valuesOfStack.count == 0
        {
            return true
        }
        return false
    }
   
}

