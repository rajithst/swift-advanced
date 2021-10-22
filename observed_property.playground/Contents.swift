import Foundation

/*
    Observed Property can be use to trigger code when a property value is changed
 */

var pizzaInInches: Int  = 10 {
    
    // willSet is monitoring right before code is executed
    willSet {
        
    }
    // didSet is monitoring right after code is executed
    didSet {
        if pizzaInInches >= 18 {
            print("invalid size, pizzaInches set to 18")
            pizzaInInches = 18
        }
    }
}
pizzaInInches = 23
print(pizzaInInches)
