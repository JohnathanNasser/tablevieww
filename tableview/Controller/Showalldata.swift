//
//  Showalldata.swift
//  tableview
//
//  Created by Johnathan on 4/30/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit
class Showalldata: UIViewController,UITableViewDataSource,UITableViewDelegate
{
    
    var categories = [Nameofitems]()
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        categories.append(Nameofitems(itemName: "Iron man", itemDesc: "Action film", itemImg: "iron 1"))
        categories.append(Nameofitems(itemName: "Thor", itemDesc: "Action film", itemImg: "thor"))
        categories.append(Nameofitems(itemName: "Spider man", itemDesc: "Action film", itemImg: "spider man"))
        categories.append(Nameofitems(itemName: "Titanic", itemDesc: "Drama film", itemImg: "titanic"))
        categories.append(Nameofitems(itemName: "Bella", itemDesc: "Drama film", itemImg: "bella"))
        categories.append(Nameofitems(itemName: "The hat", itemDesc: "Drama film", itemImg: "hat"))
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Data_cell
        
        cell.laItemName.text = categories[indexPath.row].itemName
        cell.txtDescription.text = categories[indexPath.row].itemDesc
        cell.imgItem.image = UIImage(named: categories[indexPath.row].itemImg)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let cell = tableView.cellForRow(at: indexPath )
        let objectesofdata = storyboard?.instantiateViewController(withIdentifier: "showw") as! Showdatabigger
        objectesofdata.name  = categories[indexPath.row].itemName
        objectesofdata.desc  = categories[indexPath.row].itemDesc
        objectesofdata.image = categories[indexPath.row].itemImg
        
        navigationController?.pushViewController(objectesofdata, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        let alert = UIAlertController(title: "Alert", message: "Are you sure ?", preferredStyle: .actionSheet)
        let action1 = UIAlertAction(title: "Yes", style: .default) { (action) in
            
            self.categories.remove(at: indexPath.row)
            tableView.reloadData()
        }
        
        let action2 = UIAlertAction(title: "No", style: .destructive, handler: nil)
        
        alert.addAction(action1)
        alert.addAction(action2)
        
        self.present(alert, animated: true, completion: nil)
    }
}

