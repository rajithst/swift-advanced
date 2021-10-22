import Foundation

let pizzaInInches: Int = 16
var numberOfPeople: Int = 12
let slicesPerPerson: Int = 4

/*
    Computed Property
 */

// assume number of slices in a pizza = inches of pizza - 4
var numberOfSlices: Int {
    return pizzaInInches - 4
}


var numberOfPizza: Int {
    // computed getter property
    get {
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        // new value will be computed and assign back to numberOfPizza variable
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    
    // computed setter property
    set {
        //new set value is come in "newValue" keyword
        //compute and set new value for numberOfPeople based on new passed value
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}

print(numberOfPizza)
numberOfPizza = 10
print(numberOfPeople)
