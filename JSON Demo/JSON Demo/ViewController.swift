
import UIKit
class ViewController: UIViewController
{
    
    var jsonResult:NSDictionary!
    
    @IBAction func loadJSON(_ sender: UIButton)
    {
       // let url = URL(string: "https://cognitioworld.com/dev/demo.json")
        let url = URL(string: "http://www.omdbapi.com/?s=fast+and+the+furious&apikey=4c95480a")
        let dataTask = URLSession.shared.dataTask(with: url!)
        { (data, response, err) in
            if let jsonData = data
            {
               do
                {
                    self.jsonResult = try JSONSerialization.jsonObject(with: jsonData, options: .mutableLeaves) as? NSDictionary
                    print(self.jsonResult)
                    
                    
                    /*let jsonContent = try JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as! [Any]
                    print(jsonContent)
                    let selectedArray = jsonContent[5] as! [String:Any]
                    let dept = selectedArray["department"] as! [String:Any]
                    let hr = dept["hr"] as! [Any]
                    let emp = hr[1] as! [String:Any]
                    print(emp["name"]!)*/
                }
                catch let err
                {
                    print(err)
                }
            }
        }
        dataTask.resume()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

