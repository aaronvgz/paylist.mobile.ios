//
//  Third.swift
//  PayList
//
//  Created by Aaron Vincent Zabala on 01/03/2016.
//  Copyright © 2016 Aaron Vincent Zabala. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var BtnShowMe: UIButton!
    
    @IBAction func ShowMeNa(sender: AnyObject, forEvent event: UIEvent) {
        
        let alertController = UIAlertController(title: "Message", message: "Show Me Na!", preferredStyle: UIAlertControllerStyle.Alert);
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil));
        
        self.presentViewController(alertController, animated: true, completion: nil);
        
    }
    
}
