//
//  HomeViewController.swift
//  PayList
//
//  Created by Aaron Vincent Zabala on 01/03/2016.
//  Copyright © 2016 Aaron Vincent Zabala. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var TxtEmail: UITextField!
    @IBOutlet weak var TxtPassword: UITextField!
    
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        
        if(identifier == "LoginSegue")
        {
            if(self.TxtEmail.text == "aaron" && self.TxtPassword.text == "test")
            {
                return true;
            }
        }
        else if (identifier == "NewUserSegue")
        {
            return false;
        }
        
        return false;
    }
    
}
