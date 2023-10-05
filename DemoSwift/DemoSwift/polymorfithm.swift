//
//  polymorfithm.swift
//  DemoSwift
//
//  Created by Ilya Syrov on 05.10.2023.
//

import Foundation

protocol P {
    func foo()
    func exFoo()
}

extension P {
    func exFoo() {
        print("extention protocol")
    }
}

class C: P {
    func foo() {
        print("class C foo")
    }
}

class A {
    func aFoo() {
        print("class foo")
    }
}

class B: A {
    func bFoo<T: P>(_ p: T) {
        print("Generic foo")
    }
}

