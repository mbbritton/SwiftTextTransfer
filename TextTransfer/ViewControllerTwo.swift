import UIKit

class ViewControllerTwo : UIViewController {
    @IBOutlet var nameLabel: UILabel!
    var toPass : String!
    var color : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch color {
            case "purple":
                self.view.backgroundColor = UIColor.purpleColor()
            case "blue":
                self.view.backgroundColor = UIColor.blueColor()
            default:
                break
            
        }
        
        nameLabel.text = "Hi " + toPass + "! "
        
    }
    
}