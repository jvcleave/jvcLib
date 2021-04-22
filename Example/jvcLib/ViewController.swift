//
//  ViewController.swift
//  jvcLib
//
//  Created by git on 04/21/2021.
//  Copyright (c) 2021 git. All rights reserved.
//

import UIKit
import jvcLib

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let utils = UnityPlugin();
        let result = utils.add(a: 10, b: 10);
        print("result : \(result)")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

