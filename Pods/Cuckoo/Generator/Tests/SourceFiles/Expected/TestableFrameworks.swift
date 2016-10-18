// MARK: - Mocks generated from file: SourceFiles/EmptyClass.swift
//
//  EmptyClass.swift
//  Cuckoo
//
//  Created by Tadeas Kriz on 09/02/16.
//  Copyright © 2016 Brightify. All rights reserved.
//

import Cuckoo
@testable import Cuckoo
@testable import A_b
@testable import A_c
@testable import A_d

import Foundation

class MockEmptyClass: EmptyClass, Cuckoo.Mock {
    typealias MocksType = EmptyClass
    typealias Stubbing = __StubbingProxy_EmptyClass
    typealias Verification = __VerificationProxy_EmptyClass
    let manager = Cuckoo.MockManager()
    
    private var observed: EmptyClass?
    
    override init() {
    }
    
    func spy(on victim: EmptyClass) -> Self {
        observed = victim
        return self
    }
    
    struct __StubbingProxy_EmptyClass: Cuckoo.StubbingProxy {
        private let manager: Cuckoo.MockManager
        
        init(manager: Cuckoo.MockManager) {
            self.manager = manager
        }
    }
    
    struct __VerificationProxy_EmptyClass: Cuckoo.VerificationProxy {
        private let manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
        
        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    }
}
