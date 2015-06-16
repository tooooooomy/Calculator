//
//  ViewController.swift
//  Calculator
//
//  Created by 諸星智也 on 2015/06/14.
//  Copyright (c) 2015年 諸星智也. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    var number : Float = 0
    var number2 : Float = 0
    var operation : Int = 0
    var result : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func select1(sender: AnyObject) {
        number = number*10+1.0
        label.text = String(stringInterpolationSegment: number)
    }
    
    @IBAction func select2(sender: AnyObject) {
        number = number*10+2.0
        label.text = String(stringInterpolationSegment: number)
    }
    
    @IBAction func select3(sender: AnyObject) {
        number = number*10+3.0
        label.text = String(stringInterpolationSegment: number)
        
    }

    @IBAction func select4(sender: AnyObject) {
        number = number*10+4.0
        label.text = String(stringInterpolationSegment: number)
        
    }
    @IBAction func select5(sender: AnyObject) {
        number = number*10+5.0
        label.text = String(stringInterpolationSegment: number)
    }
    
    @IBAction func select6(sender: AnyObject) {
        number = number*10+6.0
        label.text = String(stringInterpolationSegment: number)
    }
    
    @IBAction func select7(sender: AnyObject) {
        number = number*10+7.0
        label.text = String(stringInterpolationSegment: number)
    }
    
    @IBAction func select8(sender: AnyObject) {
        number = number*10+8.0
        label.text = String(stringInterpolationSegment: number)
    }
    
    @IBAction func select9(sender: AnyObject) {
        number = number*10+9.0
        label.text = String(stringInterpolationSegment: number)
    }
    
    @IBAction func select0(sender: AnyObject) {
        number = number*10+0.0
        label.text = String(stringInterpolationSegment: number)
    }
    
    
    @IBAction func plus(sender: AnyObject) {
        //plusボタンを押した時に,labelには0が表示される
        label.text = String(0)
        operation = 1
        number2 = number
        number = 0
    }
    @IBAction func hiku(sender: AnyObject) {
        //hikuボタンを押した時に,labelには0が表示される
        label.text = String(0)
        operation = 2
        number2 = number
        number = 0
    }
    
    
    @IBAction func kakeru(sender: AnyObject) {
        //kakeruボタンを押した時に,labelには0が表示される
        label.text = String(0)
        operation = 3
        number2 = number
        number = 0
    }
    
    @IBAction func waru(sender: AnyObject) {
        //waruボタンを押した時に,labelには0が表示される
        label.text = String(0)
        operation = 4
        number2 = number
        number = 0
    }
    @IBAction func equal(sender: AnyObject) {
        
        if operation == 1{
        label.text = String(stringInterpolationSegment: number2 + number)
            number = number + number2
        }
        else if operation == 2{
        label.text = String(stringInterpolationSegment: number2 - number)
            number = number2 - number
        }
        else if operation == 3{
        label.text = String(stringInterpolationSegment: number2 * number)
            number = number2 * number
        }
        else{
        label.text = String(stringInterpolationSegment: number2 / number)
            number = number2 / number
        }
    }
    
    
    @IBAction func clear(sender: AnyObject) {
        number  = 0
        number2 = 0
        label.text = String(0)
        
    }
}

