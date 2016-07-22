//
//  ViewController.swift
//  ViewControllerExample
//
//  Created by Dino Musliu on 17/07/2016.
//  Copyright © 2016 Dino Musliu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loadRed(sender : AnyObject){
        performSegueWithIdentifier("GoToRed", sender: nil)
    }
    
    @IBAction func loadBlue(sender : AnyObject){
        let str = "Hey we just came from the yallow screen!"
        //performSegueWithIdentifier("GoToBlue", sender: nil)
        performSegueWithIdentifier("GoToBlue", sender: str)
    }
    
    //called before show on screen
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "GoToBlue" { // ako imamo vise od jednog segue
            if let BlueVC = segue.destinationViewController as? BlueViewController { // moramo ga castati u blueviewcontroller
                
                
                /*
                BlueVC.transferText = "Hey we just came from the yallow screen!" // --> objekt
                 
                 ili pomocu sendera
                 */
                
                if let theString = sender as? String{
                BlueVC.transferText = theString
                }
                
                
            }
        }
    }


}

