//
//  main.swift
//  test
//
//  Created by Asal 2 on 22/09/2020.
//  Copyright © 2020 Asal 2. All rights reserved.
//

import Foundation

var intgrStk = NewStack <Int> (size: 4)
intgrStk.push(value : 7)
intgrStk.push(value : 7)
intgrStk.push(value : 3)
intgrStk.push(value : 4)
intgrStk.push(value : 4)
intgrStk.push(value : 3)
intgrStk.push(value : 8)
intgrStk.resizingStack(capacity: 7)
intgrStk.push(value : 81)
intgrStk.push(value : 89)

intgrStk.insertAt(index: 2, value: 1)

intgrStk.sortElements()
print(intgrStk.valuesOfStack)
intgrStk.removeAt(index: 2)
intgrStk.resizingStack(capacity: 10)

intgrStk.push(value: 6)
intgrStk.push(value: 33)

intgrStk.insertAt(index: 4, value: 1)
print(intgrStk.valuesOfStack)

while !(intgrStk.isEmpty()){
    let testing = intgrStk.peek()!
    print(testing )
    intgrStk.pop()
}
print(intgrStk.valuesOfStack)

/*
var employeesOfCompany = Stack <Node>(size: 5)
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
*/

print("////////////Queue////////////")
var intgrQ = NewQueue <Int> (size: 4)
intgrQ.add(value : 7)
intgrQ.add(value : 7)
intgrQ.add(value : 3)
intgrQ.add(value : 4)
intgrQ.add(value : 4)
intgrQ.add(value : 3)
intgrQ.add(value : 8)
intgrQ.resizingStack(capacity: 7)
intgrQ.add(value : 81)
intgrQ.add(value : 89)

intgrQ.insertAt(index: 2, value: 1)

intgrQ.sortElements()
print(intgrQ.valuesOfQueue)
intgrQ.removeAt(index: 2)
intgrQ.resizingStack(capacity: 10)

intgrQ.add(value: 6)
intgrQ.add(value: 33)

intgrQ.insertAt(index: 4, value: 1)
print(intgrQ.valuesOfQueue)

while !(intgrQ.isEmpty()){
    let testing = intgrQ.dequeue()
    print(testing )
    intgrQ.remove()
}
print(intgrQ.valuesOfQueue)


