//
//  main.swift
//  Queues and Stacks
//
//  Created by Asal 2 on 22/09/2020.
//  Copyright © 2020 Asal 2. All rights reserved.
//

import Foundation

print("Hello, World!")



var employeesOfCompany2 = Queue <Node>()
print(employeesOfCompany2.valuesOfQueue)

var employe1 = Node(titleOfJob:"Director")
employeesOfCompany2.add(value: employe1)
var employe2 = Node(titleOfJob:"CEO")
employeesOfCompany2.add(value: employe2)
var employe3 = Node(titleOfJob:"Marketing")
employeesOfCompany2.add(value: employe3)

print(employeesOfCompany2.valuesOfQueue.count)
while !(employeesOfCompany2.isEmpty()){
    let testing2 = employeesOfCompany2.dequeue()
    print(testing2.description!)
    employeesOfCompany2.remove()
}

