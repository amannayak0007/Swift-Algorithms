//
//  ViewController.swift
//  Algorithms
//
//  Created by Abhishek Tripathi on 23/10/18.
//  Copyright © 2018 Abhishek Tripathi. All rights reserved.
//

import UIKit

struct  User {
    
}

class ViewController: UIViewController {
    @IBOutlet weak var secondTextField: UITextField!
    
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func multiplication(_ sender: Any) {
        let multiplication = Multiplication.shared.multiplication(firstTextField.text ?? "", secondTextField.text ?? "")
        self.result.text = multiplication
    }
}

