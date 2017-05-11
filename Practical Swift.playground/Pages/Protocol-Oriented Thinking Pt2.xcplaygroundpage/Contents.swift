//: [Previous](@previous)

import Foundation

//: ## The Solution: Protocols

protocol Living {
    var alive: Bool { get set }
}

protocol Vision {
    var eyes: Int { get set }
    func look(for something: Any)
}

protocol Smell {
    var nose: Int { get set }
    func smell(thing: Any)
}

protocol Hear {
    var ears: Int { get set }
    func listen(for aSound: Any)
}

protocol Identifiable {
    var name: String { get set }
}

protocol CanGrowUp {
    var age: Int { get set }
}

//: The SuperVision protocol is more of a decorator
protocol SuperVision {}

//: #### Abilities for Vision, Smell, and Hear

extension Vision {
    func look(for something: Any) {
        print("Look for \(something)")
    }
}

extension Smell {
    func smell(thing: Any) {
        print("Smelling: \(thing)")
    }
}

extension Hear {
    func listen(for aSound: Any) {
        print("Listening for \(aSound)")
    }
}

//: Estension on the SuperVision protocol where the conforming type also conforms to Vision
extension Vision where Self: SuperVision {
    func look(for something: Any) {
        print("Really look for \(something)")
    }
}

//: #### Creature, Animal, Person, & Alien with Protocols

class Creature: Living {
    var alive: Bool
    
    init(alive: Bool) {
        self.alive = alive
    }
}

class Animal: Living, Vision, Smell, Hear {
    var alive: Bool
    var eyes: Int
    var nose: Int
    var ears: Int
    
    init(alive: Bool, eyes: Int, nose: Int, ears: Int) {
        self.alive = alive
        self.eyes = eyes
        self.nose = nose
        self.ears = ears
    }
    
    func look(for something: Any) {
        // Do something here
    }
}

class Person: Living, Vision, Smell, Hear, Identifiable, CanGrowUp {
    var name: String
    var age: Int
    
    var eyes: Int
    var nose: Int
    var ears: Int
    
    var alive: Bool
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        self.eyes = 2
        self.nose = 1
        self.ears = 2
        self.alive = true
    }
}

class Alien: Living, Vision, Hear, Identifiable, SuperVision {
    var name: String
    
    var eyes: Int
    var ears: Int
    
    var alive: Bool
    
    init(name: String, eyes: Int, ears: Int) {
        self.name = name
        self.eyes = eyes
        self.ears = ears
        self.alive = true
    }
}

//: #### Using our classes and protocol extensions

var bob = Person(name: "Bob", age: 30)
bob.listen(for: "Music")
bob.look(for: "Dignity...")

var anteater = Animal(alive: true, eyes: 2, nose: 1, ears: 2)
anteater.smell(thing: "Ants")

var ET = Alien(name: "ET", eyes: 2, ears: 2)
ET.look(for: "Home")

//: [Next](@next)
