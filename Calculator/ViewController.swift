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
    var decimal : Int = 0                //小数点かどうかの判断
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func select1(sender: AnyObject) {
        if decimal == 1{
            number = number+0.1*1
            display2(number)
        }else{
        number = number*10+1
        display(Int(number))
        }
        
        //display(Int(number))
        
    }
    
    @IBAction func select2(sender: AnyObject) {
        if decimal == 1{                     //小数の時の処理
            number = number+0.1*2
            display2(number)
        }else{                               //整数の時の処理
            number = number*10+2
            display(Int(number))
        }
    }
    
    @IBAction func select3(sender: AnyObject) {
        if decimal == 1{
            number = number+0.1*3
            display2(number)
        }else{
            number = number*10+3
            display(Int(number))
        }
    }

    @IBAction func select4(sender: AnyObject) {
        if decimal == 1{
            number = number+0.1*4
            display2(number)
        }else{
            number = number*10+4
            display(Int(number))
        }
    }
    @IBAction func select5(sender: AnyObject) {
        if decimal == 1{
            number = number+0.1*5
            display2(number)
        }else{
            number = number*10+5
            display(Int(number))
        }
    }
    
    @IBAction func select6(sender: AnyObject) {
        if decimal == 1{
            number = number+0.1*6
            display2(number)
        }else{
            number = number*10+6
            display(Int(number))
        }
    }
    
    @IBAction func select7(sender: AnyObject) {
        if decimal == 1{
            number = number+0.1*7
            display2(number)
        }else{
            number = number*10+7
            display(Int(number))
        }
    }
    
    @IBAction func select8(sender: AnyObject) {
        if decimal == 1{
            number = number+0.1*8
            display2(number)
        }else{
            number = number*10+8
            display(Int(number))
        }
    }
    
    @IBAction func select9(sender: AnyObject) {
        if decimal == 1{
            number = number+0.1*9
            display2(number)
        }else{
            number = number*10+9
            display(Int(number))
        }
    }
    
    @IBAction func select0(sender: AnyObject) {
            number = number*10+0
            display(Int(number))

    }
    
    
    //数字を表示する(整数)
    private func display(number : Int){
        label.text = String(stringInterpolationSegment: number)
    }
    
    //数字を表示する(少数)
    private func display2(number : Float){
        label.text = String(stringInterpolationSegment: number)
        decimal = 0
    }
    
    
    //小数点の処理
    @IBAction func decimal(sender: AnyObject) {
        label.text = String(stringInterpolationSegment: number)
        decimal = 1

    }
    
    
    
    @IBAction func plus(sender: AnyObject) {
        //plusボタンを押した時に,labelには0が表示される
        label.text = "+"
        operation = 1
        number2 = number
        number = 0
    }
    @IBAction func hiku(sender: AnyObject) {
        //hikuボタンを押した時に,labelには0が表示される
        label.text = "-"
        operation = 2
        number2 = number
        number = 0
    }
    
    
    @IBAction func kakeru(sender: AnyObject) {
        //kakeruボタンを押した時に,labelには0が表示される
        label.text = "×"
        operation = 3
        number2 = number
        number = 0
    }
    
    @IBAction func waru(sender: AnyObject) {
        //waruボタンを押した時に,labelには0が表示される
        label.text = "÷"
        operation = 4
        number2 = number
        number = 0
    }
    
    //結果出し及び計算
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
        else if operation == 4{
        label.text = String(stringInterpolationSegment: number2 / number)
            number = number2 / number
        }else{
        }
    }
    
    //リセット
    @IBAction func clear(sender: AnyObject) {
        number  = 0
        number2 = 0
        operation = 0
        label.text = String(0)
        
    }
}

