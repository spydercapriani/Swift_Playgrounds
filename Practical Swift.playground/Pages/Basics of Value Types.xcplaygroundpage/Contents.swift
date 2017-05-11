//: [Previous](@previous)

import Foundation

//: # Basics of Value Types

struct Thing {
    var id: Int
    
    mutating func change(id: Int) {
        self.id = id
    }
}

let thing1 = Thing(id: 1)
var thing2 = thing1
thing2.change(id: 2)

thing1.id
thing2.id


//: [Next](@next)
