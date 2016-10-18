//
//  HelloWorld.swift
//  HelloWorldCuckoo
//
//  Created by User on 10/17/16.
//  Copyright © 2016 riis. All rights reserved.
//

import Foundation

protocol Greeter {
    
    func message(msg: String) -> String
}

class HelloWorld : Greeter {
    
    
    func message(msg: String) -> String {
        return msg
    }
}
