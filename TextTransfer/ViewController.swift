import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textField : UITextField!
    @IBOutlet var outputLabel : UILabel!
    
    @IBAction func updateButton(sender : AnyObject){
        outputLabel.text =  "Your name is: " + textField.text!
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //This exists to pass data from one controller to another
        if (segue.identifier == "testSegue") {
            let svc = segue.destinationViewController as? ViewControllerTwo
            svc?.toPass = textField.text
        }
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?){
        //Hides the keyboard when touched elsewhere
        view.endEditing(true)
        super.touchesBegan(touches, withEvent: event)
    }

}

