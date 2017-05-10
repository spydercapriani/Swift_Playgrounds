//: Playground - noun: a place where people can play

import UIKit

func almostIncreasingSequence(sequence: [Int]) -> Bool {
    var modifiedSequence = sequence
    var erasedItems = 0
    
    var nextIndex = 1
    
    for i in modifiedSequence {
        while nextIndex < modifiedSequence.count && i >= modifiedSequence[nextIndex] {
            modifiedSequence.remove(at: nextIndex)
            erasedItems += 1
        }
        nextIndex += 1
    }
    
    return erasedItems <= 1 || modifiedSequence.count == 1
}

almostIncreasingSequence(sequence: [1, 3, 2, 1])                // false
almostIncreasingSequence(sequence: [1, 3, 2])                   // true
almostIncreasingSequence(sequence: [1, 2, 1, 2])                // false
almostIncreasingSequence(sequence: [1, 4, 10, 4, 2])            // false
almostIncreasingSequence(sequence: [10, 1, 2, 3, 4, 5])         // true
almostIncreasingSequence(sequence: [1, 1, 1, 2, 3])             // false
almostIncreasingSequence(sequence: [0, -2, 5, 6])               // true
almostIncreasingSequence(sequence: [1, 2, 3, 4, 5, 3, 5, 6])    // false
almostIncreasingSequence(sequence: [40, 50, 60, 10, 20, 30])    // false
almostIncreasingSequence(sequence: [1, 1])                      // true
almostIncreasingSequence(sequence: [10, 1, 2, 3, 4, 5, 6, 1])   // false*
almostIncreasingSequence(sequence: [1, 2, 3, 4, 3, 6])          // true
almostIncreasingSequence(sequence: [1, 2, 3, 4, 99, 5, 6])      // true*

