//
//  Stack.swift
//
//
//  Created by Asal 2 on 22/09/2020.
//  Copyright © 2020 Asal 2. All rights reserved.
//

import Foundation


import Foundation

class NewStack <T: Hashable & Comparable>{
    var maximumCapacity:Int?
    var valuesOfStack = [T] ()
  private  var set = Set<T>()
    init(size: Int){
        maximumCapacity=size
        valuesOfStack.reserveCapacity(_: size)
      
    }
    
/* func Distinct() {
        valuesOfStack = Array (Set(valuesOfStack))
       
    }*/
    
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
    
func sortElements(){
    valuesOfStack = valuesOfStack.sorted(by: { $0 < $1 } ) //placeholder to value
        
        
    }
    
    
    func insertAt (index: Int , value: T){
         if maximumCapacity != valuesOfStack.count {
        let check = addToSet(elemnt: value)
        if check {
            valuesOfStack.insert(value, at: index)
        }
            
        }
         else {
            print("Maximum Capacity, Can not be added")
        }
    }
    
    func removeAt (index: Int){
        let trash = valuesOfStack[index]
        set.remove(trash)
      valuesOfStack.remove(at: index)
    }
    
    func resizingStack(capacity: Int){
        maximumCapacity = capacity
        valuesOfStack.reserveCapacity(_:capacity)
    }
     
  
    func push (value: T){
      //  Distinct()
        if maximumCapacity != valuesOfStack.count {
      let check =  addToSet(elemnt: value)
        if check {
            valuesOfStack.append(value)
        }
        }
        else {
            print("Reached Maximum Capacity, Can not be added")
        }
    }
    
    func pop (){
        if isEmpty() {
            print("Stack is Empty")
        }
        let trash = peek()
        set.remove(trash!)
        valuesOfStack.removeLast()

        
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

class Node: Hashable, Comparable  {
    static func < (lhs: Node, rhs: Node) -> Bool {
         lhs.id < rhs.id
    }
    
    static func == (lhs: Node, rhs: Node) -> Bool {
            lhs.id == rhs.id
       }
    
   var hashValue:Int{
        return  id.hashValue ^ description.hashValue
    }
    let id = Int.random(in: 1..<1000)
    let description : String?
   var check:String {
        if description != nil {
            return description!
        }
        return description!
    }
    init(titleOfJob:String) {
description = titleOfJob
    }
}
