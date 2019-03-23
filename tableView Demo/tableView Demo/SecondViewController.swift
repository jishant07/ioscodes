import UIKit

class SecondViewController: UIViewController
{
    
    @IBOutlet weak var titleData: UITextField!
    
    @IBOutlet weak var newSubtitleData: UITextField!
    @IBAction func addDate(_ sender: UIButton)
    {
        tableData.append(titleData.text!)
        subtitleData.append(newSubtitleData.text!)
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}
