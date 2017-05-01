//
//  ThirdViewController.swift
//  wang
//
//  Created by wangyouzhan on 2017/4/29.
//  Copyright © 2017年 lookstar. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    
    @IBOutlet weak var beautyPicker: UIPickerView!
    
    
    let beauties = ["范冰冰","李冰冰", "王菲","杨幂","周迅"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        beautyPicker.dataSource = self
        beautyPicker.delegate = self
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goGallery" {
            
            let index = beautyPicker.selectedRow(inComponent: 0)
            
            var imageName:String?
            
            switch index {
            case 0:
                imageName = "1"
            case 1:
                imageName = "2"
            case 2:
                imageName = "3"
            case 3:
                imageName = "4"
            case 4:
                imageName = "2"
            default:
                imageName = nil
            }
            
            let vc = segue.destination as! GalleryViewController
            
            vc.imageName = imageName
            
        }
    }
    
    
    @IBAction func close(segue:UIStoryboardSegue){
        
        print("------------------")
        
    }
    
    
}

















