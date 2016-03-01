//
//  HomeViewController.swift
//  PayList
//
//  Created by Aaron Vincent Zabala on 01/03/2016.
//  Copyright © 2016 Aaron Vincent Zabala. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    private var _segue_login = "LoginSegue"
    private var _segue_register = "NewUserSegue"
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        
        if(identifier == self._segue_login)
        {
            self.txtEmail.text = self.txtEmail.text?.lowercaseString;
            
            if (self.txtEmail.text == "" || self.txtPassword.text == "")
            {
                let alertController = UIAlertController(title: "Message", message: "Please provide email and password.", preferredStyle: UIAlertControllerStyle.Alert);
                alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil));
                self.presentViewController(alertController, animated: true, completion: nil);
                
            }
            
            if(self.txtEmail.text == "aaron" && self.txtPassword.text == "test") // TODO : Change logic to a web service call
            {
                return true;
            }
            else
            {
                let alertController = UIAlertController(title: "Log In Failed", message: "Unable to confirm email and password please try again.", preferredStyle: UIAlertControllerStyle.Alert);
                alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil));
                self.presentViewController(alertController, animated: true, completion: nil);
            }
        }
        else if (identifier == self._segue_register)
        {
            
            return true;
        }
        
        return false;
    }
    
}
