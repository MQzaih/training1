//
//  main.swift
//  Queues and Stacks
//
//  Created by Asal 2 on 22/09/2020.
//  Copyright © 2020 Asal 2. All rights reserved.
//

import Foundation

print("Hello, World!")


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
    print(testing.description!)
    employeesOfCompany.pop()

}
