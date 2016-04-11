import UIKit

class ViewControllerTwo : UIViewController {
    @IBOutlet var nameLabel: UILabel!
    var toPass : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Hi " + toPass + "!"
    }
    
}