//
//  loginViewController.swift
//  Wave
//
//  Created by Smallulu on 15/11/2.
//  Copyright @ 2015 evtechnologies. All rights reserved.
//

import UIKit

class loginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var userNameText: UITextField!
    @IBOutlet var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        userNameText.delegate = self
        passwordText.delegate = self
        userNameText.becomeFirstResponder()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func dismissCVC(sender: UIButton) {
        self.dismissViewControllerAnimated(false, completion: nil)
        print("login done")
    }
    

}

