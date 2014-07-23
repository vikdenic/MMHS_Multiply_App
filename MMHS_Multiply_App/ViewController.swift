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
    @IBOutlet weak var backgroundImageView: UIImageView!

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
            animate()

            //change background color
            if product % 2 == 0
            {
//                myView.backgroundColor = UIColor.greenColor()
                backgroundImageView.image = UIImage(named: "green_bg")

            }
            else{
//                myView.backgroundColor = UIColor.orangeColor()
                backgroundImageView.image = UIImage(named: "orange_bg")
            }
        }
        else
        {
            resultLabel.text = "Cannot Calculate"
//            myView.backgroundColor = UIColor.whiteColor()
            backgroundImageView.image = nil
            animate()
        }
    }

    func animate()
    {
        var animation = CATransition()
        animation.type = kCATransitionFade
        animation.duration = 0.5
        resultLabel.layer.addAnimation(animation, forKey: "kCATransitionFade")
    }
}

