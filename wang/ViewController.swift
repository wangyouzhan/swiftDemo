//
//  ViewController.swift
//  wang
//
//  Created by wangyouzhan on 2017/4/11.
//  Copyright © 2017年 lookstar. All rights reserved.
//

import UIKit


class ViewController:UIViewController{
    
    
    let offset = 4
    
    
    @IBOutlet weak var yearOfBirth: UITextField!
   
    @IBOutlet weak var image: UIImageView!
    
    @IBAction func okTapped(_ sender: Any) {
        
        yearOfBirth.resignFirstResponder()
        if let year = Int(yearOfBirth.text!) {
            let imgNumber = (year - offset) % 12
            image.image = UIImage(named: String(imgNumber))
            
        }else{
            
            
        }
    
    }
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        yearOfBirth.resignFirstResponder()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let navVC = segue.destination as? UINavigationController{
            if let historyVC = navVC.viewControllers[0] as? SecondViewController{
                
            }
        }
    }
    
    
    //跳转
    @IBAction func skip(_ sender: Any) {
        
        
        let secondViewController:SecondViewController = SecondViewController();
        
        present(secondViewController, animated: true, completion: nil)
        
        
        
    }
    
    
    
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}























