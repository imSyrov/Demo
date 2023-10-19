//
//  polymorfithm.swift
//  DemoSwift
//
//  Created by Ilya Syrov on 05.10.2023.
//

import Foundation
///Polymorfithm
/// Параметрический == истинный (true)
/// Специальный == мнимый == ad-hoc

///Polymorfithm in Swift
/// - ovverride (ad-hoc) - переопределение методов при наследовании
/// - перегрузка операторов (ad-hoc)
/// - protocols (ad-hoc)
/// - generics (true)

protocol P {
    func foo()
    func exFoo()
}

/// Static dispath
extension P {
    func exFoo() {
        print("extention protocol")
    }
}


class C: P {
    ///Dinamic dispatch Witnes-table
    func foo() {
        print("class C foo")
    }
    
    /// Relise func exFoo is static dispatch
}

///Static dispatch
extension C {
    func foo1() {
        print("extension class C")
    }
}

class A {
    func aFoo() {
        print("class foo")
    }
}

///Dinamic dispatch: Virtual-table
class B: A {
    func bFoo<T: P>(_ p: T) {
        print("Generic foo")
    }
}

