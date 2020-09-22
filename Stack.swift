//
//  main.swift
//  Stack
//
//  Created by Asal 2 on 20/09/2020.
//  Copyright © 2020 Asal 2. All rights reserved.
//

import Foundation

class Stack <T> {
    
    var valuesOfStack = [T] ()
    
    func push (value: T){
        valuesOfStack.append(value)
    }
    
    func pop (){
        if isEmpty() {
            print("Stack is Empty")
        }
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


/*
var employeesOfCompany = Stack <Node>()
print(employeesOfCompany.valuesOfStack)

var employee1 = Node(titleOfJob:"Director")
employeesOfCompany.push(value: employee1)
var employee2 = Node(titleOfJob:"CEO")
employeesOfCompany.push(value: employee2)
var employee3 = Node(titleOfJob:"Marketing")
employeesOfCompany.push(value: employee3)

print(employeesOfCompany.valuesOfStack.count)
while !(employeesOfCompany.isEmpty()){
    let testing = employeesOfCompany.peek()!
    print(testing.description )
    employeesOfCompany.pop()
}*/


