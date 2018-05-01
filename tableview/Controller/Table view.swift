//
//  Table view.swift
//  tableview
//
//  Created by Johnathan on 4/30/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit
class Table_view: UIViewController,UITableViewDataSource,UITableViewDelegate
{
    
    var actionmovies  = ["Iron man","Thor","Spider man"]
    var dramamovies   = ["Titanic","Bella","The hat"]
    var sectionsTypes = ["Action movies","Drama movies"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return sectionsTypes.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        if section == 0
        {
            return sectionsTypes[0]
        }
        else
        {
            return sectionsTypes[1]
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        if section == 0
        {
            return dramamovies.count
        }
        else
        {
            return actionmovies.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        if indexPath.section == 0
        {
            cell.textLabel?.text = dramamovies[indexPath.row]
        }
        else
        {
            cell.textLabel?.text = actionmovies[indexPath.row]
        }
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let cell = tableView.cellForRow(at: indexPath)
        
        if indexPath.section == 0
        {
            print(dramamovies[indexPath.row])
        }
        else
        {
            print(actionmovies[indexPath.row])
        }
    }
}


