import Foundation

var pizzaInInches: Int = 10 {
    willSet {
        print(newValue)
    }
    
    didSet {
        if pizzaInInches >= 18 {
            print("Invalid size specified, pizzaInInhes set to 18")
            pizzaInInches = 18
        }
    }
}
var numberOfPeople: Int = 6
let slicesPerPerson: Int = 5

var numberOfSlices: Int {
    get {
        return pizzaInInches - 4
    }
    
    set {
        print("numberOfSlices now has a new value which is \(newValue)")
    }
}

var numberOfPizza: Int {
    get {
        let numberofPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberofPeopleFedPerPizza
    }
    
    set {
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}

//print(numberOfPizza)
//
//numberOfPizza = 4
//print(numberOfPeople)


pizzaInInches = 33
