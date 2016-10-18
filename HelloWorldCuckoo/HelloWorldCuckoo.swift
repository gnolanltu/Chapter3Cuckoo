//
//  HelloWorld.swift
//  HelloWorldCuckoo
//
//  Created by User on 10/17/16.
//  Copyright © 2016 riis. All rights reserved.
//

import Foundation

protocol Greeter {
    
    func message(_ msg: String) -> String
}

class HelloWorldCuckoo : Greeter {
    
    
    func message(_ msg: String) -> String {
        return msg
    }
}
