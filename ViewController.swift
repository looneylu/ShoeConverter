//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Luis Carbuccia on 12/11/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var shoesSizeTextField: UITextField!
    @IBOutlet var convertedShoeSizeLabel: UILabel!
    @IBOutlet var womenShoeSizeTextField: UITextField!
    @IBOutlet var womenShoeSizeLabel: UILabel!
    
    
    @IBAction func convertButtonPressed(sender: AnyObject)
    {
        let sizeFromTextField = shoesSizeTextField.text.toInt()!
        
        let conversionConstant = 30
        convertedShoeSizeLabel.hidden = false
        convertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European size"
    }

    @IBAction func convertWomanShoeButtonPressed(sender: AnyObject)
    {
        let sizeFromTextField = (womenShoeSizeTextField.text as NSString).doubleValue
        let conversionConstant = 30.5
        womenShoeSizeLabel.hidden = false
        womenShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European size"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

