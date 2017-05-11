//: [Previous](@previous)

import Foundation
import UIKit

protocol canPresentViewControllers {
    func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion:(() -> Void)?)
}

struct AlertDisplayer {
    var canPresentControllers: canPresentViewControllers
    
    init(canPresentControllers: canPresentViewControllers) {
        self.canPresentControllers = canPresentControllers
    }
    
    func displayAlert(withTitle title: String?, andMessage message: String?) {
        // present UIAlertController
    }
}

//: # Testing with Protocols

class ProtocolTest {
    // Fake test object that conforms to canPresentViewControllers
    class TestObject: canPresentViewControllers {
        var controller: UIViewController? = nil
        var flag: Bool? = nil
        var completion: (() -> Void)? = nil
        
        func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)?) {
            self.controller = viewControllerToPresent
            self.flag = flag
            self.completion = completion
        }
    }
    
    func testDisplayAlert() {
        let testObj = TestObject()
        let subject = AlertDisplayer(canPresentControllers: testObj)
        
        subject.displayAlert(withTitle: "Title", andMessage: "Message")
        
        testObj.controller != nil
        testObj.flag == true
        testObj.completion == nil
    }
}

//: [Next](@next)
