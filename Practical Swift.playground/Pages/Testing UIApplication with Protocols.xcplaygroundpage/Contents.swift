//: [Previous](@previous)

import Foundation
import UIKit

//: # Testing UIApplication with Protocols

struct User {}

class ViewModel {
    var user: User? = nil {
        didSet {
            print("Registered")
            UIApplication.shared.registerForRemoteNotifications()
        }
    }
    
    // This registrar holds the functionality for registering for remote notifications
    var registrar: PushNotificationRegistrar
    
    // Dependency Injection allows us to inject anything that conforms to this protocol
    init(registrar: PushNotificationRegistrar) {
        self.registrar = registrar
    }
}

class TestViewModel {
    func testShouldRegisterForRemoteNotifications() {
        // Setup
        let registrar = FakeRegistrar()
        let subject = ViewModel(registrar: registrar)
        let user = User()
        
        // Action
        subject.user = user
        
        // Assertion
        registrar.registered == true
    }
    
    // This class conforms to our protocol for testing
    class FakeRegistrar: PushNotificationRegistrar {
        var registered = false
        func registerForRemoteNotifications() {
            registered = true
        }
    }
}

// Protocol used to describe functionality from the UIApplication
protocol PushNotificationRegistrar {
    func registerForRemoteNotifications()
}

extension UIApplication: PushNotificationRegistrar {}

//: [Next](@next)
