//
//  ViewController.swift
//  MyApp
//
//  Created by Daniel Eggert on 12/01/15.
//  Copyright (c) 2015 objc.io. All rights reserved.
//

import UIKit
import Foo



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        print("ViewController")
        let baz = Baz()
        print("\(baz)")
        baz.doSomething()

        let bar = Bar()
        print("\(bar)")
    }
}
