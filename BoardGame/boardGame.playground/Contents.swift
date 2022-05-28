import UIKit

typealias Game = (name: String, damageLevel: Int)

func encounterOne(damageLevel: Int) {
    print("you implemeneted about \(damageLevel) of damage\n ")
}

func enemyAttacker(attack: Game) -> String {
    return "your enemy hit you with \(attack.damageLevel) damage\n"
}
encounterOne(damageLevel:60)
var secondAttck = enemyAttacker(attack: ("Power Punch", 55))

typealias techniques = ([Game]) -> Void
let playerAction = [("Fire Bomb", 44), ("smokeBomb",25), ("gas attack", 50)]

func fetchPlayerAttacks(closure: techniques) {
    closure(playerAction)
}
fetchPlayerAttacks { (attackOptions) in for (name, damageLevel) in attackOptions {
    print("\(name) will hit for \(damageLevel) if implemeneted")
    }
    
}

