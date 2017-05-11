//: [Previous](@previous)

import Foundation

//: # Bicycle Object with Traits

//: #### 1. An object can have a cadence
protocol hasCadence {
    func changeCadence(by value: Int)
}

//: #### 2. An object can have gears
protocol hasGears {
    func changeGears(to value: Int)
}

//: #### 3. An object can have pedals
protocol hasPedals {
    func speedUp(by value: Int)
}

//: #### 4. An object can have brakes
protocol hasBrakes {
    func applyBrakes(by amount: Int)
}

class Bicycle: hasCadence, hasGears, hasPedals, hasBrakes {
    // MARK: - Properties for a bike
    
    // 1
    func changeCadence(by value: Int) {
        <#code#>
    }
    
    // 2
    func changeGears(to value: Int) {
        <#code#>
    }
    
    // 3
    func speedUp(by value: Int) {
        <#code#>
    }
    
    // 4
    func applyBrakes(by amount: Int) {
        <#code#>
    }
}

//: [Next](@next)
