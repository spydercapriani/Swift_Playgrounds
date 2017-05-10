//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let optionalValue1: String? = "SomeString"
let optionalValue2: String? = "SomeOtherString"

// Guard / Let Statements

// Swift 1 - Nested Optional Bindings
if let value1 = optionalValue1 {
    if let value2 = optionalValue2 {
        value1
        value2
    }
}

// Swift 2 - Multiple Optional Bindings
if let value1 = optionalValue1,
    let value2 = optionalValue2 {
    value1
    value2
}

// Defer Statements
func postAdd(_ x: inout Int) -> Int {
    defer {
        x += 1
    }
    return x
}
var x = 1
postAdd(&x) // Value of x is 1
x // Value of x is 2


// Error Handling
enum StringParsingException: Error {
    case NotThere
    case Empty
}

func throwStringError(str: String?) throws -> String {
    guard let s = str else {
        throw StringParsingException.NotThere
    }
    if s.isEmpty {
        throw StringParsingException.Empty
    }
    return s
}

do {
    let result = try throwStringError(str: nil)
    result
} catch {
    error
}

do {
    let result = try throwStringError(str: "")
    result
} catch {
    error
}

var str = "Hello Exception"
do {
    let result = try throwStringError(str: str)
    result
} catch {
    error
}

