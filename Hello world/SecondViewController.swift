//
//  SecondViewController.swift
//  Hello world
//
//  Created by Kevin S. on 30/12/15.
//  Copyright © 2015 Kevin Sotomayor Vergara. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var label_text: UILabel!
    
    var textPassed = String()
        
    override func viewDidLoad() {
        label_text.text = textPassed
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


