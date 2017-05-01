//
//  TableViewTestControllerViewController.swift
//  wang
//
//  Created by wangyouzhan on 2017/4/30.
//  Copyright © 2017年 lookstar. All rights reserved.
//

import UIKit


var todos : [TodoModel] = []
var filteredTodos: [TodoModel] = []

func dateFromString (_ dateStr: String) -> Date?{
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    let date = dateFormatter.date(from: dateStr)
    return date
    
}

class TableViewTestController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    
    @IBOutlet weak var mTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mTableView.dataSource = self
        self.mTableView.delegate  = self
        
        todos = [TodoModel(id: "1", image: "child-selected", title: "1. 去游乐场", date: dateFromString("2014-10-20")! as NSDate),
                 TodoModel(id: "2", image: "shopping-cart-selected", title: "2. 购物", date: dateFromString("2014-10-28")! as NSDate),
                 TodoModel(id: "3", image: "phone-selected", title: "3. 打电话", date: dateFromString("2014-10-30")! as NSDate),
                 TodoModel(id: "4", image: "travel-selected", title: "4. Travel to Europe", date: dateFromString("2014-10-31")! as NSDate)]
        
        

        // ºººDo any additional setup after loading the view.
    }

  
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.mTableView.dequeueReusableCell(withIdentifier: "todoCell")!
        
        let todo = todos[indexPath.row] as TodoModel
        
        let image = cell.viewWithTag(101) as! UIImageView
        let title = cell.viewWithTag(102) as! UILabel
        let date = cell.viewWithTag(103) as! UILabel
        
        image.image = UIImage(named: todo.image)
        title.text = todo.title
        
        let locale = NSLocale.current
        let dateFormat = DateFormatter.dateFormat(fromTemplate: "yyyy-MM-dd", options: 0, locale: locale)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat
        
        date.text = dateFormatter.string(from: todo.date as Date)
        
        
        navigationItem.rightBarButtonItem = editButtonItem
        
        
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete {
            todos.remove(at: indexPath.row)
            self.mTableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return self.isEditing
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        self.mTableView.setEditing(editing, animated: true)
    }
    
    
    @IBAction func close(_ segue: UIStoryboardSegue){
        print("closed!")
        mTableView.reloadData()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goItemDetail" {
            let vc = segue.destination as! DetailViewController
            let indexPath = self.mTableView.indexPathForSelectedRow
            
            if let index = indexPath{
                vc.todo = todos[index.row]
            }
        }
        
        
    }
    
    
    
    
    
    

    
    
    

}
