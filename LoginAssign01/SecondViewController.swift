//
//  SecondViewController.swift
//  LoginAssign01
//
//  Created by Louis Ansal on 25/10/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    var unameSVC = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        unameLabel.text = unameSVC

    }
    
    @IBOutlet weak var unameLabel: UILabel!
    
}
