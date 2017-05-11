//: [Previous](@previous)

import Foundation

//: # Basics of Reference Types

class Object {
    var id: Int
    
    init(id: Int) {
        self.id = id
    }
}

let object1 = Object(id: 1)
let object2 = object1
object2.id = 2

object1.id
object2.id

//: [Next](@next)
