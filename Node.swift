//
//  Node.swift
//  Queues and Stacks
//
//  Created by Asal 2 on 22/09/2020.
//  Copyright © 2020 Asal 2. All rights reserved.
//



import Foundation

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
