//
//  ViewController.swift
//  LoginAssign01
//
//  Created by Louis Ansal on 21/08/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var usern: UITextField!
    
    @IBOutlet weak var pass: UITextField!
    
    @IBAction func loginButton(_ sender: Any) {
        
        let email = usern.text
        let passw = pass.text
        
        if(email == "louis@gmail.com" && passw == "1234"){
            let VC = storyboard?.instantiateViewController(identifier: "SVC") as! SecondViewController
            
            let emailSplit = email?.split(separator: "@")
            
            let uname = String(emailSplit?.first ?? "")
            
            VC.unameSVC = uname
            
            present(VC, animated: true)
            
        }
        else{
            let alert = UIAlertController(title: "Sorry", message: "Email & Password Incorrect", preferredStyle: .alert)
            let cancel = UIAlertAction(title: "Close", style: .destructive)
            alert.addAction(cancel)
            present(alert, animated: true)
        }
    }
    
}
