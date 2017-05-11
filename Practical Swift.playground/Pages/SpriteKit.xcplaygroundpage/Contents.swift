//: [Previous](@previous)

import Foundation
import SpriteKit

//: # SpriteKit example to illustrate POP techniques in Game Development

//: #### ScrollDirection defines the direction a node can scroll

enum ScrollDirection {
    case Forward
    case Backward
}

/*:
 #### The Scrolling protocol defines the necessary properties and actions
 #### to properly scroll a node
 */

protocol Scrolling {
    var scrollDirection: ScrollDirection { get set }
    var scrollSpeed: CGFloat { get set }
    
    func scroll()
    func scrollForever()
    func scrollAction() -> SKAction
    func scrollForeverAction() -> SKAction
}

extension Scrolling {
    /// Using the scrollDirection and the scrollSpeed to describe the direction and speed used for scrolling
    var scrollDelta: CGVector {
        return CGVector(dx: 1.0, dy: 0.0)
    }
    
    /// Defines the SKAction used to scroll
    func scrollAction() -> SKAction {
        return SKAction.move(by: scrollDelta, duration: 1.0/60.0)
    }
    
    /// Repeats the scrollAction's SKAction forever
    func scrollForeverAction() -> SKAction {
        return SKAction.repeatForever(scrollAction())
    }
}

extension Scrolling where Self: SKNode {
    /// Uses the run method on SKNode to execute the SKAction object from scrollAction
    func scroll() {
        run(scrollAction())
    }
    
    /// Uses the run method on SKNode to execute the SKAction object from scrollForeverAction
    func scrollForever() {
        run(scrollForeverAction())
    }
}



//: [Next](@next)
