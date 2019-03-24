import UIKit

class SignUpViewController: UIViewController {

    
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var userName: UITextField!
    @IBAction func dataAdder(_ sender: UIButton)
    {
        performSegue(withIdentifier: "finalSegue", sender: sender)
    }
    func dataSave()
    {
        /*var userNameData = [String]()
        var userEmailData = [String]()
        var userPwdData = [String]()
        userNameData.append(userName.text!)
        userEmailData.append(emailText.text!)
        userPwdData.append(passwordText.text!)*/
        UserDefaults.standard.set(userName.text!,forKey:"user_name")
        UserDefaults.standard.set(emailText.text!,forKey:"email")
        UserDefaults.standard.set(passwordText.text!,forKey:"pwd")
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "finalSegue"
        {
            dataSave()
            let destination = segue.destination as! ResultViewController
            destination.catcher = userName.text!
        }
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}
