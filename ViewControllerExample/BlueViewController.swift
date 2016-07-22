//
//  BlueViewController.swift
//  ViewControllerExample
//
//  Created by Dino Musliu on 17/07/2016.
//  Copyright © 2016 Dino Musliu. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

    @IBOutlet weak var mainLbl: UILabel!
    var transferText = ""
    var test : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //mainLbl.text = transferText
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated) // call perent class
        mainLbl.text = transferText
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
