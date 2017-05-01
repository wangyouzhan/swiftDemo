//
//  GalleryViewController.swift
//  wang
//
//  Created by wangyouzhan on 2017/4/29.
//  Copyright © 2017年 lookstar. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {
    
    @IBOutlet weak var picker: UIImageView!
    
    var imageName:String?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let image = imageName {
            picker.image = UIImage(named: image)
            print("\(imageName!)")

        }
        
              

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
