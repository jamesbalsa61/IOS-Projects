import UIKit

var health = 5
var stormTrooperBlasterReload = false
var magazineCaptivity = 0
var rebelsEliminated = 0
var sprinting = 0
var speed = 0
var switchBlaster: String? = ""
var inventory: [String] = ["blasterPistol", "blasterRifle", "blasterShotgun"]


//ends the loop once it reaches 800
while health > 0 {
    if rebelsEliminated == 150 {
        print("The emperor has rised!")
                break
            }
    if stormTrooperBlasterReload {
        print("you are reloading, Take cover!")
        sleep(7)
        print("reloading almost complete!")
        sleep(2)
        print("aiming your blaster")
        stormTrooperBlasterReload = false
        magazineCaptivity = 0
    }
    if magazineCaptivity > 50 {
        stormTrooperBlasterReload = true
        continue
    }
    print("Firing")
    magazineCaptivity += 1
    rebelsEliminated += 1
}


