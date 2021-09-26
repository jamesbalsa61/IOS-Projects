import UIKit
import CoreText


    //lists all of the cases
enum Food: String {
    case Breakfeast
    case Lunch
    case Dinner
    case Dessert
    
    //mutating function
    mutating func ThroughoutDay() {
        switch self {
            
        case .Breakfeast:
            self = .Breakfeast
        case .Lunch:
            self = .Lunch
        case .Dinner:
            self = .Dinner
        case .Dessert:
            print("This will be later throughout the day")
        }
    }
    
}
//Enum and Switch Statement
enum WhattoDrink {
    case OrangeJuice (Pulp: Int)
    case Coffee (BlackCoffee: Bool)
    
    var Drinks: Int {
        switch self {
        case .OrangeJuice( let Pulp):
            return Pulp * 4
        case .Coffee:
            return Int(2.0)
        }
    }
}
//Caseiterable
enum TypesDrink: String, CaseIterable  {
    case Black = "Black Coffee"
    case Cream = "Only Creamer"
    case Sugar = "Sugar only"
    case CreamandSugar = "Cream and sugar"
    case Pulp = "Pulp Only"
    case NoPulp = "No Pulp"
    case SomePulp = "SomePulp"
    case AlotPulp = " Alot of Pulp"
    
}

func Drinksmenu(){
    print("There are \(TypesDrink.allCases.count) Drinks to Order:")
    for Order in TypesDrink.allCases {
        print(Order.rawValue)
    }
}

func Order(of typesDrink: TypesDrink, and food: Food, using whattoDrink: WhattoDrink){
    print("Thank you for ordering our \(food.rawValue) and \(typesDrink.rawValue) we appreciate you! look at our drink special! Today.")
    switch whattoDrink {
        
    case .OrangeJuice:
        print("You will be getting Orange juice $\(whattoDrink.Drinks)")
    case .Coffee(let BlackCoffee):
        if BlackCoffee {
            print("You will be recieving no creamn or sugar in your coffee")
        }else{
            print("You will be getting cream and sugar")
        }
    }
}

Drinksmenu()

var Orders = Food.Breakfeast
Orders.ThroughoutDay()

Order(of: TypesDrink.Black, and: Orders, using: WhattoDrink.Coffee(BlackCoffee: true))


   
