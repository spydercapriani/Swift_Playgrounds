//: [Previous](@previous)

import Foundation

//: # Protocol-Oriented Thinking

//: ## The Problem: Object-Oriented Programming

class Creature {
    var alive: Bool
    
    init(alive: Bool) {
        self.alive = alive
    }
}

class Animal: Creature {
    var eyes: Int
    var nose: Int
    var ears: Int
    
    init(alive: Bool, eyes: Int, nose: Int, ears: Int) {
        self.eyes = eyes
        self.nose = nose
        self.ears = ears
        super.init(alive: alive)
    }
}

class Person: Animal {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        super.init(alive: true, eyes: 2, nose: 1, ears: 2)
    }
}



//: [Next](@next)
