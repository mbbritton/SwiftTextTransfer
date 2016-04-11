import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textField : UITextField!
    @IBOutlet var outputLabel : UILabel!
    @IBOutlet weak var optionSelector: UISegmentedControl!
    
    var color : String!
    
    @IBAction func updateButton(sender : AnyObject){
        outputLabel.text =  "Your name is: " + textField.text!
        textField.resignFirstResponder()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //This exists to pass data from one controller to another
        if (segue.identifier == "testSegue") {
            let svc = segue.destinationViewController as? ViewControllerTwo
            svc?.toPass = textField.text
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
        default:
            break;
        }
        return ""
    }


}

