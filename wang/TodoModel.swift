//
//  TodoModel.swift
//  wang
//
//  Created by wangyouzhan on 2017/4/30.
//  Copyright © 2017年 lookstar. All rights reserved.
//

import UIKit

class TodoModel: NSObject {
    
    
    var id:String
    var image:String
    var title:String
    var date: NSDate
    
    
    init(id:String,image:String, title:String, date:NSDate) {
        self.id = id
        self.image = image
        self.title = title
        self.date = date
    }
    
    
    
    
    

}
