
import UIKit

class ViewController: UIViewController {
    
    private var moveChoices = [RPSMove.rock,.paper,.scissors]
    
    @IBOutlet var buttons: [UIButton]!
    
    @IBAction func pressButton(_ sender: UIButton) {
        if let buttonNumber = buttons.index(of: sender) {
            rpsGame.setPlayerMove(to:moveChoices[buttonNumber])
        }
        performSegue(withIdentifier: "resultsSegue", sender: self)
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
}

