//
//  AddViewController.swift
//  NewTabbed
//
//  Created by Student on 08/04/19.
//  Copyright © 2019 ACEaceaceace. All rights reserved.
//

import UIKit
import CoreData

var incomeData = [Any]()
var tableData = [Any]()
var subtitleData = [Any]()
var contentsData = [Any]()
var incData = [Any]()
var exp = 0
var acc = ""
var cat = ""
var amt = 0
var con = ""
var entry = [Any]()
var expData = [Any]()
var accData = [Any]()
var catData = [Any]()
var amtData = [Any]()
var contentData = [Any]()
var check = [Any]()

class AddViewController: UIViewController
{
    @IBOutlet weak var expenseButtonTitle: UIButton!
    @IBOutlet weak var incomeButtonTitle: UIButton!
    @IBOutlet weak var categoryButtonTitle: UIButton!
    @IBOutlet weak var accountButtonTitle: UIButton!
    
    @IBAction func subviewclose(_ sender: Any)
    {
        categorysubview.isHidden = true
        accountsubview.isHidden = true
    }
    
    @IBOutlet weak var categoryincomesubview: UIView!
    @IBOutlet weak var categorysubview: UIView!
    @IBOutlet weak var accountsubview: UIView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        categorysubview.isHidden = true
        accountsubview.isHidden = true
        categoryincomesubview.isHidden = true
    }
    @IBAction func accountsClicked(_ sender: Any)
    {
        categorysubview.isHidden = true
        accountsubview.isHidden = false
        categoryincomesubview.isHidden = true
    }
    @IBAction func categoryClicked(_ sender: Any)
    {
        if(exp == 0){
        categorysubview.isHidden = false
        accountsubview.isHidden = true
        categoryincomesubview.isHidden = true
        }
        if(exp == 1){
        categorysubview.isHidden = true
        accountsubview.isHidden = true
        categoryincomesubview.isHidden = false
            
        }
    }
    @IBOutlet weak var contents: UITextField!
    @IBOutlet weak var amount: UITextField!
    @IBAction func incomeClicked(_ sender: Any)
    {
        exp = 1
        incomeButtonTitle.backgroundColor = UIColor(red: 0.4, green: 1.0, blue: 0.2, alpha: 0.5)
        expenseButtonTitle.backgroundColor = UIColor(red: 1, green: 1.0, blue: 1, alpha: 0.5)
    }
    @IBAction func cashClicked(_ sender: Any)
    {
        acc = "Cash"
        accountButtonTitle.setTitle("Cash",for: .normal)
    }
    @IBAction func accountClicked(_ sender: Any)
    {
        acc = "Account";accountButtonTitle.setTitle("Account",for: .normal)
    }
    @IBAction func cardClicked(_ sender: Any)
    {
        acc = "Card";accountButtonTitle.setTitle("Card",for: .normal)
    }
    @IBAction func expenseClicked(_ sender: Any)
    {
        exp = 0
        expenseButtonTitle.backgroundColor = UIColor(red: 0.4, green: 1.0, blue: 0.2, alpha: 0.5)
        incomeButtonTitle.backgroundColor = UIColor(red: 1, green: 1.0, blue: 1, alpha: 0.5)
    }
    @IBAction func foodClicked(_ sender: Any)
    {
        cat = "Food";categoryButtonTitle.setTitle("Food",for: .normal)
    }
    @IBAction func SlifeClicked(_ sender: Any)
    {
        cat = "Social-Life";categoryButtonTitle.setTitle("Social-Life",for: .normal)
    }
    @IBAction func selfdevClicked(_ sender: Any)
    {
        cat = "Self-Development";categoryButtonTitle.setTitle("Self-Development",for: .normal)
    }
    @IBAction func transportClicked(_ sender: Any)
    {
        cat = "Transportation";categoryButtonTitle.setTitle("Transport",for: .normal)
    }
    @IBAction func cultureClicked(_ sender: Any)
    {
        cat = "Culture";categoryButtonTitle.setTitle("Culture",for: .normal)
    }
    @IBAction func householdClicked(_ sender: Any)
    {
        cat = "Household";categoryButtonTitle.setTitle("Household",for: .normal)
    }
    @IBAction func apparelClicked(_ sender: Any)
    {
        cat = "Apparel";categoryButtonTitle.setTitle("Apparel",for: .normal)
    }
    @IBAction func beautyClicked(_ sender: Any)
    {
        cat = "Beauty";categoryButtonTitle.setTitle("Beauty",for: .normal)
    }
    @IBAction func healthClicked(_ sender: Any)
    {
        cat = "Health";categoryButtonTitle.setTitle("Health",for: .normal)
    }
    @IBAction func educationClicked(_ sender: Any)
    {
        cat = "Education";categoryButtonTitle.setTitle("Education",for: .normal)
    }
    @IBAction func giftClicked(_ sender: Any)
    {
        cat = "Gift";categoryButtonTitle.setTitle("Gift",for: .normal)
    }
    @IBAction func othersClicked(_ sender: Any)
    {
        cat = "Others";categoryButtonTitle.setTitle("Others",for: .normal)
    }
    func saveData()
    {
        print("Current Entry",entry)
        expData.append(0)
        accData.append(0)
        catData.append(0)
        amtData.append(0)
        contentData.append(0)
        UserDefaults.standard.set(expData, forKey: "expense")
        UserDefaults.standard.set(accData,forKey: "account")
        UserDefaults.standard.set(catData, forKey: "category")
        UserDefaults.standard.set(amtData, forKey: "amount")
        UserDefaults.standard.set(contentData, forKey: "content")
        expData = UserDefaults.standard.object(forKey: "expense") as! [Any]
        accData = UserDefaults.standard.object(forKey: "account") as! [Any]
        catData = UserDefaults.standard.object(forKey: "category") as! [Any]
        amtData = UserDefaults.standard.object(forKey: "amount") as! [Any]
        contentData = UserDefaults.standard.object(forKey: "content") as! [Any]
        expData.append(entry[0])
        accData.append(entry[1])
        catData.append(entry[2])
        amtData.append(entry[3])
        contentData.append(entry[4])
        UserDefaults.standard.set(expData, forKey: "expense")
        UserDefaults.standard.set(accData,forKey: "account")
        UserDefaults.standard.set(catData, forKey: "category")
        UserDefaults.standard.set(amtData, forKey: "amount")
        UserDefaults.standard.set(contentData, forKey: "content")
    }
    func viewData()
    {
        print("Checking Data...")
        check.append(UserDefaults.standard.object(forKey: "account")!)
        print(check[1])
    }
    @IBAction func SAVEClicked(_ sender: Any)
    {
        entry=[exp,acc,cat,Int(amount.text!)!,contents.text!]
        
        tableData.insert(catData, at: 0)
        subtitleData.insert(amtData, at: 0)
        
        saveData()
        viewData()
    }
}
