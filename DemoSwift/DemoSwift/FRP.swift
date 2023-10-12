//
//  FRP.swift
//  DemoSwift
//
//  Created by Ilya Syrov on 05.10.2023.
//

import Foundation

func curry<A,B,C>( _ f: @escaping (A, B) -> C ) -> (A) -> (B) -> C {
    { a in { b in f(a,b) } }
}

func uncurry<A,B,C>(_ f: @escaping (A) -> (B) -> C) -> (A,B) -> C {
    { (a: A, b: B) -> C in f(a)(b) }
}

func papply<A,B,R>(_ f: @escaping (A,B) -> R, _ p: B) -> (A) -> R {
    func apply(_ p1: A) -> R {
        f(p1, p)
    }
    
    return apply(_:)
}

func papply3<A,B,C,R>(_ f: @escaping (A,B,C) -> R, _ p: C ) -> (A,B) -> R {
    func apply(_ p1: A, _ p2: B) -> R {
        f(p1, p2, p)
    }
    
    return apply(_:_:)
}

func foo1(_ p1: Int, p2: Int) -> String {
    return "\(p1 + p2)"
}

func sum(_ a: String, _ b: String ) -> String {
    a + b
}

func dif(_ a: Int, _ b: Int ) -> Int {
    a - b
}

let sumName = curry(sum(_:_:)) ("name")
let sumName1 = papply(sum(_:_:), "name")

