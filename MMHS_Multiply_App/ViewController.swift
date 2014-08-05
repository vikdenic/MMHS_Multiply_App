//
//  ViewController.swift
//  MMHS_Multiply_App
//
//  Created by Vik Denic on 7/22/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var myView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onCalculateButtonPressed(sender: AnyObject)
    {
        var multiplicand = textField2.text.toInt()
        var multiplier = textField1.text.toInt()

        //safely unwrap optionals
        if multiplicand != nil && multiplier != nil
        {
            var product = multiplicand! * multiplier!
            resultLabel.text = "\(product)"

            //change background color
            if product % 2 == 0
            {
                myView.backgroundColor = UIColor.greenColor()
            }
            else{
                myView.backgroundColor = UIColor.orangeColor()
            }
        }
    }
}

