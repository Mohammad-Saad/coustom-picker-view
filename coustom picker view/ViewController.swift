//
//  ViewController.swift
//  coustom picker view
//
//  Created by Hassaan Masood on 4/9/15.
//  Copyright (c) 2015 Szabist. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    let modarray = ["abc","def","fdsdsa","fdasfsda","fsadfdsa"]
    //var var2=["abc","d","fd","f","dsa"]
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return modarray.count
        }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        
            return modarray[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        var colour: UIColor
        
        switch row {
        case 1,3,4:
            colour = UIColor.redColor()
        case 0,2:
            colour = UIColor.blueColor()
        default:
            colour = UIColor(red: 0.5, green: 0.2, blue: 1.0, alpha: 1.0)
        
    }
        self.view.backgroundColor = colour
        
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

