//: [Previous](@previous)

import Foundation
import UIKit

//: # Protocols for working with UIKit

protocol hasView {
    var view: UIView! { get set }
}

protocol canPresentViewControllers {
    func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion:(() -> Void)?)
}

protocol canBlockView {
    func block()
}

extension canBlockView where Self: hasView {
    func block() {
        // block the view
    }
}

//: #### Alert Displayer using struct and protocol

struct AlertDisplayer {
    var canPresentControllers: canPresentViewControllers
    
    init(canPresentControllers: canPresentViewControllers) {
        self.canPresentControllers = canPresentControllers
    }
    
    func displayAlert(withTitle title: String?, andMessage message: String?) {
        // present UIAlertController
    }
}

extension UIViewController: canPresentViewControllers {}

let viewCtrl = UIViewController()
let alertDisplayer = AlertDisplayer(canPresentControllers: viewCtrl)
alertDisplayer.canPresentControllers

let secondAD = alertDisplayer
secondAD.canPresentControllers

//: [Next](@next)
