import UIKit

class ViewControllerTwo : UIViewController {
    @IBOutlet var nameLabel: UILabel!
    var name : String!
    var color : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch color {
            case "purple":
                self.view.backgroundColor = UIColor.purpleColor()
            case "blue":
                self.view.backgroundColor = UIColor.blueColor()
            case "green":
                self.view.backgroundColor = UIColor.greenColor()
            case "red":
                self.view.backgroundColor = UIColor.redColor()
            case "orange":
                self.view.backgroundColor = UIColor.orangeColor()
            default:
                break
            
        }
        
        nameLabel.text = "Hi " + name + "! "
        
    }
    
}