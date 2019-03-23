
import UIKit

var tableData = ["Hello","World","Basic","Table","View","Data"]
var subtitleData = ["Botstrap on","steroids","in swift","and","Apple","ecosystem"]
var imageData = ["img","img1","img2","img3","img4","img5","img6"]

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    @IBOutlet weak var mtTable: UITableView!
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
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "tableCell")
        cell.textLabel?.text = tableData[indexPath.row]
        cell.detailTextLabel?.text = subtitleData[indexPath.row]
        //cell.imageView?.image = UIImage(named: imageData[indexPath.row])
        return cell
    }
    override func viewDidAppear(_ animated: Bool)
    {
        mtTable.reloadData()
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}

