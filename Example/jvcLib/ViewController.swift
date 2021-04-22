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

    @IBOutlet weak var label: UILabel!
    
    var timer:Timer!
    
    let utils = UnityPlugin();

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer = Timer.scheduledTimer(timeInterval: 1.0/60, target: self, selector: #selector(onTimer), userInfo: nil, repeats: true)
    }

    @objc func onTimer() {
        
        DispatchQueue.main.async {
            
            let a =  Int.random(in: 1..<10);
            let b =  Int.random(in: 1..<10);
            let result = self.utils.add(a: a, b: b)
            let count = self.utils.retrieveRecordCount();
            let string  = String("\(a) + \(b) = \(result) : \(count)")
            self.utils.printString(s: string)
        }
        
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

