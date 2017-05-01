//
//  DetailViewController.swift
//  wang
//
//  Created by wangyouzhan on 2017/4/30.
//  Copyright © 2017年 lookstar. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController,UITextFieldDelegate {
    
    
    var todo:TodoModel?
    
    
    @IBOutlet weak var childButton: UIButton!
    
    
    @IBOutlet weak var phoneButton: UIButton!
    
    
    @IBOutlet weak var shoppingCartButton: UIButton!
    
    @IBOutlet weak var travelButton: UIButton!
    
    
    @IBOutlet weak var todoItem: UITextField!
    
    
    @IBOutlet weak var todoDate: UIDatePicker!
    
    
    func resetButtons() {
        childButton.isSelected = false
        phoneButton.isSelected = false
        shoppingCartButton.isSelected = false
        travelButton.isSelected = false
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        todoItem.delegate = self
        
        if todo == nil {
            childButton.isSelected = true
            navigationController?.title = "新建Todo"
            
        }else{
            
            navigationController?.title = "修改todo"
            if todo?.image == "child-selected" {
                childButton.isSelected = true
            }
            else if todo?.image == "phone-selected"{
                
            }
            else if todo?.image == "shopping-cart-selected"{
                
            }
            else if todo?.image == "travel-selected"{
                
                
            }
            
            todoItem.text = todo?.title
            todoDate.setDate((todo?.date)! as Date, animated: false)
            
            
            
            
        }
        
        
        
        
        
    }
    
    
    
    @IBAction func childTapped(_ sender: Any) {
        resetButtons()
        childButton.isSelected = true
        
        
    }
    
  
    
    @IBAction func phoneTapped(_ sender: Any) {
        resetButtons()
        phoneButton.isSelected = true
        
    }
    
    
    
    @IBAction func shoppingCartTapped(_ sender: Any) {
        resetButtons()
        shoppingCartButton.isSelected = true
        
    }
    
    
    
    
    @IBAction func travalTapped(_ sender: Any) {
        resetButtons()
        travelButton.isSelected = true
        
        
    }
    

    
    @IBAction func okTapped(_ sender: Any) {
        
        var image = ""
        if childButton.isSelected {
            image = "child-selected"
        }
        else if phoneButton.isSelected
        {
            image = "phone-selected"
        }
        else if shoppingCartButton.isSelected
        {
            image = "shopping-cart-selected"
        }
        else if travelButton.isSelected{
            image = "travel-selected"
        }
        
        
        if todo == nil {
            let uuid = UUID().uuidString
            todo = TodoModel(id: uuid, image: image, title: todoItem.text!, date: todoDate.date as NSDate)
            todos.append(todo!)
        }else{
            todo?.image = image
            todo?.title = todoItem.text!
            todo?.date = todoDate.date as NSDate
        }
        
    }
    
 
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
    
   
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        todoItem.resignFirstResponder()
    }
    
    



}





























