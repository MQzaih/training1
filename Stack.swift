//
//  main.swift
//  ExtraOperations
//
//  Created by Asal 2 on 20/09/2020.
//  Copyright © 2020 Asal 2. All rights reserved.
//


import Foundation

class Stack <T: Hashable & Comparable>{
    var maximumCapacity:Int?
    var valuesOfStack = [T] ()
  private  var set = Set<T>()
    init(size: Int){
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
    }
     
  
    func push (value: T){
      //  Distinct()
      let check =  addToSet(elemnt: value)
        if check {
            valuesOfStack.append(value)
        }
        
    }
    
    func pop (){
        if isEmpty() {
            print("Stack is Empty")
        }
        var trash = peek()
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



var intgrStk = Stack <Int> (size: 3)
intgrStk.push(value : 7)
intgrStk.push(value : 7)
intgrStk.push(value : 3)
intgrStk.push(value : 4)
intgrStk.push(value : 4)
intgrStk.push(value : 3)
intgrStk.push(value : 8)

intgrStk.insertAt(index: 2, value: 1)

intgrStk.sortElements()
print(intgrStk.valuesOfStack)
//intgrStk.removeAt(index: 2)
//intgrStk.resizingStack(capacity: 10)

intgrStk.pop()
intgrStk.push(value: 7)
//intgrStk.insertAt(index: 4, value: 1)
print(intgrStk.valuesOfStack)

/*while !(intgrStk.isEmpty()){
    let testing = intgrStk.peek()!
    print(testing )
    intgrStk.pop()
}
print(intgrStk.valuesOfStack)*/

/*
var employeesOfCompany = Stack <Node>()
print(employeesOfCompany.valuesOfStack)

var employee1 = Node(titleOfJob:"Director")
employeesOfCompany.push(value: employee1)
var employee2 = Node(titleOfJob:"CEO")
employeesOfCompany.push(value: employee2)
var employee3 = Node(titleOfJob:"Developer")
employeesOfCompany.push(value: employee3)

print(employeesOfCompany.valuesOfStack.description)

while !(employeesOfCompany.isEmpty()){
    let testing = employeesOfCompany.peek()!
    print(testing.description )
    employeesOfCompany.pop()
}*/







