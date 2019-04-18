//
//  FFirstViewController.swift
//  NewTabbed
//
//  Created by Student on 10/04/19.
//  Copyright © 2019 ACEaceaceace. All rights reserved.
//

import UIKit

class FFirstViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
    

    
    /*@IBOutlet weak var mytab: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        if(tableData.count < subtitleData.count)
        {
            return tableData.count
        }
        else
        {
            return subtitleData.count
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "tableCell")
        cell.textLabel?.text = (tableData[indexPath.row] as! String)
        cell.detailTextLabel?.text = (subtitleData[indexPath.row] as! String)
        //cell.imageView?.image = UIImage(named: imageData[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == .delete
        {
            tableData.remove(at: indexPath.row)
            subtitleData.remove(at: indexPath.row)
        }
        mytab.reloadData()
    }
    func viewData()
    {
        print("Checking Data...")
        check.append(UserDefaults.standard.object(forKey: "account")!)
        check.append(UserDefaults.standard.object(forKey: "category")!)
        check.append(UserDefaults.standard.object(forKey: "amount")!)
        check.append(UserDefaults.standard.object(forKey: "content")!)
        print(check)
    }
    override func viewDidAppear(_ animated: Bool)
    {
        mytab.reloadData()
    }*/
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //viewData()
    }
}



