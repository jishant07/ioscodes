import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var ageText: UITextField!
    func getContext() -> NSManagedObjectContext
    {
        let delegate = UIApplication.shared.delegate as! AppDelegate
        return delegate.persistentContainer.viewContext
    }
    @IBAction func saveButton(_ sender: UIButton)
    {
        let context = getContext()
        let newEmployee = NSEntityDescription.insertNewObject(forEntityName: "Employee", into: context)
        newEmployee.setValue(nameText.text!, forKey: "name")
        newEmployee.setValue(Int(ageText.text!), forKey: "age")
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
    @IBAction func retriveButton(_ sender: UIButton)
    {
        let fetchReq = NSFetchRequest<NSFetchRequestResult>(entityName: "Employee")
        do
        {
            let record = try getContext().fetch(fetchReq)
            for i in record as! [NSManagedObject]
            {
                print(i.value(forKey: "name")!, i.value(forKey: "age")!)
            }
        }
        catch let err
        {
            print(err.localizedDescription)
        }
        
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

}

