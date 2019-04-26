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

var contentsData = [Any]()
var incData = [Any]()
var exp = 100
var acc = ""
var cat = ""
var amt = 0
var con = ""

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
        /*UIView.transition(with: categorysubview, duration: 1000, options: [.curveEaseIn, .transitionCrossDissolve], animations:{
            self.categorysubview.isHidden = true
        }, completion: nil)*/
        UIView.animate(withDuration: 2.0, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .showHideTransitionViews, animations: {
        }, completion: nil)
        self.categorysubview.isHidden = true
        self.accountsubview.isHidden = false
        self.categoryincomesubview.isHidden = true
    }
    @IBAction func categoryClicked(_ sender: Any)
    {
        if(exp == 0)
        {
            categorysubview.isHidden = false
            accountsubview.isHidden = true
            categoryincomesubview.isHidden = true
        }
        if(exp == 1)
        {
            categorysubview.isHidden = true
            accountsubview.isHidden = true
            categoryincomesubview.isHidden = false
        }
        if(exp == 100)
        {
            let alert = UIAlertController(title: "Please select the expense type", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(alert, animated: true)
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
    func getContext() -> NSManagedObjectContext
    {
        let delegate = UIApplication.shared.delegate as! AppDelegate
        return delegate.persistentContainer.viewContext
    }
    
    @IBAction func SAVEClicked(_ sender: Any)
    {
        if exp == 100
        {
            let alert = UIAlertController(title: "Please select the expense type", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(alert, animated: true)
        }
        else
        {
            if ((acc != "") && (cat != "") && ((amount.text!) != "") && ((contents.text!) != ""))
            {
                let context = getContext()
                let newData = NSEntityDescription.insertNewObject(forEntityName: "Added_Data", into: context)
                newData.setValue(exp, forKey: "inc_exp")
                newData.setValue(acc, forKey: "account")
                newData.setValue(cat, forKey: "category")
                newData.setValue(Int(amount.text!)!, forKey:"amount")
                newData.setValue(contents.text!, forKey: "contents")
                do
                {
                    try context.save()
                    print(NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true).last! )
                }
                catch let err
                {
                    print(err.localizedDescription)
                }
                
            }
            else
            {
                let alert = UIAlertController(title: "Fill all the details", message: nil, preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
                self.present(alert, animated: true)
            }
        }
    }
}
