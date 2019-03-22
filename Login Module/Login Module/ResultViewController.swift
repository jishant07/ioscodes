
import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    var catcher = " "
    override func viewDidLoad()
    {
        super.viewDidLoad()
        resultLabel.text = catcher
    }
}
