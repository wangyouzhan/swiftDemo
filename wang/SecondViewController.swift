//
//  SecondViewController.swift
//  wang
//
//  Created by wangyouzhan on 2017/4/29.
//  Copyright © 2017年 lookstar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var gender:UISegmentedControl!
    
    @IBOutlet weak var birthday:UIDatePicker!
    
    @IBOutlet weak var heightNumber:UISlider!
    
    @IBOutlet weak var height:UILabel!
    
    @IBOutlet weak var hasProperty: UISwitch!
    
    
    
    
    @IBOutlet weak var result: UITextView!
    
    
    
    @IBAction func heightChaned(_ sender: Any) {
        
        let slider = sender as! UISlider
        
        height.text = "\(Int(slider.value))厘米";
        
        
    }
    
    
    
    @IBAction func ok(_ sender: Any) {
        
        let genderText = gender.selectedSegmentIndex == 0 ? "高富帅" : "白富美"
        
        let date = birthday.date
        
        let dformatter = DateFormatter()
        
        dformatter.dateFormat = "yyyy年MM月dd日 HH:mm:ss"
        let datesr = dformatter.string(from: date)
        
        
        
        
        
        result.text = "\(name.text ?? "d"),\(genderText),\(datesr)"
        
        
    }
    
    
    //UITextFiledDeleagete
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true;
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        name.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}















