
import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet var resultsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultsLabel.text = rpsGame.gameResult()
    }
}
