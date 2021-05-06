
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func username(_ sender: Any) {
        
    }
    @IBAction func longin(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(identifier: "second") as? SecondViewController else {
            print ("failed")
            return
        }
        
        present(vc, animated:true)
    }
    
}

