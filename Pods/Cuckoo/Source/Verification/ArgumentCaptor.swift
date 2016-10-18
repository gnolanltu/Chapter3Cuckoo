//
//  ArgumentCaptor.swift
//  Cuckoo
//
//  Created by Filip Dolnik on 29.06.16.
//  Copyright © 2016 Brightify. All rights reserved.
//

// Can be used to capture arguments. It is recommended to use it only in verification and not stubbing.
open class ArgumentCaptor<T> {
    
    // Last captured argument if any.
    open var value: T? {
        return allValues.last
    }
    
    // All captured arguments.
    open fileprivate(set) var allValues: [T] = []
    
    public init() {

    }
    
    // Return parameter matcher which capture the argument.
    open func capture() -> ParameterMatcher<T> {
        return ParameterMatcher {
            self.allValues.append($0)
            return true
        }
    }
}
