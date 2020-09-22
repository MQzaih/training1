//
//  main.swift
//  Queues and Stacks
//
//  Created by Asal 2 on 22/09/2020.
//  Copyright © 2020 Asal 2. All rights reserved.
//

import Foundation

var intgrStk = Stack <Int> ()
intgrStk.push(value : 7)
intgrStk.push(value : 7)
intgrStk.push(value : 3)
intgrStk.push(value : 4)
intgrStk.push(value : 4)
intgrStk.push(value : 3)
intgrStk.insertAt(index: 2, value: 1)

intgrStk.sortElements()
print(intgrStk.valuesOfStack)
//intgrStk.removeAt(index: 2)
//intgrStk.resizingStack(capacity: 10)

intgrStk.pop()
intgrStk.push(value: 7)
//intgrStk.insertAt(index: 4, value: 1)
print(intgrStk.valuesOfStack)

while !(intgrStk.isEmpty()){
    let testing = intgrStk.peek()!
    print(testing )
    intgrStk.pop()
}
print(intgrStk.valuesOfStack)


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
}
