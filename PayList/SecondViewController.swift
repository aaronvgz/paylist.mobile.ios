//
//  SecondViewController.swift
//  PayList
//
//  Created by Aaron Vincent Zabala on 29/02/2016.
//  Copyright © 2016 Aaron Vincent Zabala. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        // Aaron : I wrote this for fun...
        
    }   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var BtnShowMessage: UIButton!
    
    
    @IBAction func ShowMessage(sender: UIButton, forEvent event: UIEvent) {
        
        let alertController = UIAlertController(title: "Message", message: "Hello World!", preferredStyle: UIAlertControllerStyle.Alert);
        
        alertController.addAction(UIAlertAction(title: "Title", style: UIAlertActionStyle.Default, handler: nil));
        
        self.presentViewController(alertController, animated: true, completion: nil);
    }
    
        
}