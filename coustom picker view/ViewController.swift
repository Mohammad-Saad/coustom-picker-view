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
    var var2=["abc","d","fd","f","dsa"]
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            var rows = var2.count
            if component == 0
            {
                rows = modarray.count
            }
            return rows;
        }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        var componentStr = var2[row]
        if component == 0
        {
            componentStr = modarray[row]
        }
        return componentStr;
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

