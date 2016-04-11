import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textField : UITextField!
    @IBOutlet var outputLabel : UILabel!
    @IBOutlet weak var optionSelector: UISegmentedControl!
    
    var color : String!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //This exists to pass data from one controller to another
        if (segue.identifier == "testSegue") {
            let svc = segue.destinationViewController as? ViewControllerTwo
            svc?.name = textField.text
            svc?.color = chooseColor()
        }
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?){
        //Hides the keyboard when touched elsewhere
        view.endEditing(true)
        super.touchesBegan(touches, withEvent: event)
    }
    
    func chooseColor() -> String {
        switch optionSelector.selectedSegmentIndex
        {
        case 0:
            return "purple"
        case 1:
            return "blue"
        case 2:
            return "green"
        case 3:
            return "red"
        case 4:
            return "orange"
        default:
            break;
        }
        return ""
    }


}

