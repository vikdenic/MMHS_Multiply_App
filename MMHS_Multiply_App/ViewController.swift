//
//  ViewController.swift
//  MMHS_Multiply_App
//
//  Created by Vik Denic on 7/22/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
                            
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var backgroundImageView: UIImageView!

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    @IBAction func onCalculateButtonPressed(sender: UIButton)
    {
        let multiplicand = textField2.text.toInt()
        let multiplier = textField1.text.toInt()

        //safely unwrap optionals
        if multiplicand != nil && multiplier != nil
        {
            var product = multiplicand! * multiplier!
            resultLabel.text = "\(product)"
            animateResultLabel()

            //change background color
            if product % 2 == 0
            {
                backgroundImageView.image = UIImage(named: "green_bg")
            }
            else
            {
                backgroundImageView.image = UIImage(named: "orange_bg")
            }
        }
        else
        {
            resultLabel.text = "Cannot Calculate"
            backgroundImageView.image = nil
            animateResultLabel()
        }
    }

    func animateResultLabel()
    {
        resultLabel.alpha = 0
        UIView.animateWithDuration(1, animations: {
            self.resultLabel.alpha = 1
        })
    }
}

