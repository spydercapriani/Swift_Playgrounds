//: ## Presenter

import UIKit
import Foundation

class Presenter {
    weak var view: UIView?
    
    init(view: UIView) {
        self.view = view
    }
    
    func displayAlert(on viewController: UIViewController, withTitle title: String?, message: String?, andActions actions: [UIAlertAction]) {
        let alert = createAlert(withTitle: title, message: message, andActions: actions)
        viewController.present(alert, animated: true, completion: nil)
    }
    
    func createAlert(withTitle title: String?, message: String?, andActions actions: [UIAlertAction]) -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        actions.forEach({
            alert.addAction($0)
        })
        
        return alert
    }
}

class ViewController: UIViewController {
    var presenter: Presenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = Presenter(view: view)
    }
    
    @IBAction func userDoesSomething() {
        let action = UIAlertAction(title: "OK", style: .destructive, handler: nil)
        presenter?.displayAlert(on: self, withTitle: "Error", message: "You did something bad", andActions: [action])
    }
}

