//
//  Bar.swift
//  Foo
//
//  Created by Daniel Eggert on 09/01/15.
//  Copyright (c) 2015 objc.io. All rights reserved.
//

import UIKit
import Foo_Private


@objc public class Bar: NSObject {
   
    @objc public func doSomething() {
        // We can access Baz, which is public:
        let b = Baz()
        print("\(b)")
        
        // We can also access Norf, even though it is not public:
        let n = Norf()
        print("\(n)")
        
        let q = Qux()
        print("\(q)")
    }
}
