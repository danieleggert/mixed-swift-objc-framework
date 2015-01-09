//
//  Bar.swift
//  Foo
//
//  Created by Daniel Eggert on 09/01/15.
//  Copyright (c) 2015 objc.io. All rights reserved.
//

import UIKit
import FooPrivate



@objc(Bar)
public class Bar: NSObject {
   
    public func doSomething() {
        // We can access Baz, which is public:
        let b = Baz()
        println("\(b)")
        
        // We can also access Norf, even though it is not public:
        let n = Norf()
        println("\(n)")
        
        let q = Qux()
        println("\(q)")
    }
}
