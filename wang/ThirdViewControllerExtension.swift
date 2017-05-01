//
//  ThirdViewControllerExtension.swift
//  wang
//
//  Created by wangyouzhan on 2017/4/29.
//  Copyright © 2017年 lookstar. All rights reserved.
//

import UIKit


extension ThirdViewController:UIPickerViewDataSource{

    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    
    // returns the # of rows in each component..
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return beauties.count
        
    }
    
}

extension ThirdViewController:UIPickerViewDelegate{
    
     public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        
        return beauties[row]
        
    }
    
}
