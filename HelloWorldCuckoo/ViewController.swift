//
//  ViewController.swift
//  HelloWorldCuckoo
//
//  Created by User on 10/17/16.
//  Copyright © 2016 riis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelText: UILabel!
    let hw = HelloWorldCuckoo()
    
    @IBAction func updateLabel(_ sender: UIButton) {
        // labelText.text = "Hello World"
        labelText.text = hw.message("Hello World")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

