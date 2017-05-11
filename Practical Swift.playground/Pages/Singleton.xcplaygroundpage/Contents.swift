//: [Previous](@previous)

//: ## Singleton

import Foundation

class MyAppState {
    static let instance: MyAppState = MyAppState()
    
    func handleSomething() {
        print("Singleton working here...")
    }
}

MyAppState.instance.handleSomething()

//: [Next](@next)
