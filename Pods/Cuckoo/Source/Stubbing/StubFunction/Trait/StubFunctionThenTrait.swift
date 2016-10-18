//
//  StubFunctionThenTrait.swift
//  Cuckoo
//
//  Created by Filip Dolnik on 27.06.16.
//  Copyright © 2016 Brightify. All rights reserved.
//

public protocol StubFunctionThenTrait: BaseStubFunctionTrait {
    /// Invokes `implementation` when invoked.
    func then(_ implementation: (IN) -> OUT) -> Self
}

public extension StubFunctionThenTrait {
    func then(_ implementation: (IN) -> OUT) -> Self {
        stub.appendAction(.callImplementation(implementation))
        return self
    }
}
