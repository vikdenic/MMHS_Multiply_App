//
//  ViewController.swift
//  MMHS_Multiply_App
//
//  Created by Vik Denic on 7/22/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit
//import QuartzCore for animation
import QuartzCore

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
        if multiplicand && multiplier
        {
            var product = multiplicand! * multiplier!
            resultLabel.text = "\(product)"
            //implement custom animation
            animate()

            //change background color
            if product % 2 == 0
            {
                myView.backgroundColor = UIColor.greenColor()
            }
            else{
                myView.backgroundColor = UIColor.orangeColor()
            }
        }
        else
        {
            resultLabel.text = "Cannot Calculate"
            myView.backgroundColor = UIColor.whiteColor()
            //implement custom animation
            animate()
        }
    }

    //custom animation for results label
    func animate()
    {
        var animation = CATransition()
        animation.type = kCATransitionFade
        animation.duration = 0.5
        resultLabel.layer.addAnimation(animation, forKey: "kCATransitionFade")
    }
}

