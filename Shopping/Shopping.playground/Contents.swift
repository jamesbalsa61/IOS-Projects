import UIKit


var letsGoShopping = ["gameboy", "playStation", "Xbox", "computer", "newSetHeadPhones"]
var itemAndPrice = ["gameboy": 200, "playStation": 300, "computer": 150, "newSetHeadPhones": 400]

var checkStock = letsGoShopping.contains("playStation")

letsGoShopping.insert("gamingPc", at: 3)

var pickItem = letsGoShopping[0]

var games: Set = ["call of duty", "blackops", "resident evil", "rainbowSix"]
var gameRatesForBestPick: Set = ["call of duty", "residentk evil"]

var missingGames = games.subtracting(gameRatesForBestPick)

var justDance = (name: "justDance2", cost: 25, canBuy: true)
justDance.name
justDance.canBuy

