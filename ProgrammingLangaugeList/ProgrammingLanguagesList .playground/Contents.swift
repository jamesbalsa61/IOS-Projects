import UIKit
import CoreText


enum Languages: Int {
    case Swift = 2014
    case Dart = 2016
    case Kotlin = 2015
    case ObjectiveC = 1999
}

var programmingLanguages: Languages = .Swift
switch programmingLanguages {
case .Swift:
    print("Swift programming language was developed in late periods of IOS development")
case .Dart:
    print("Dart was developed 2016 and introdcued more advancments with Android development")
case .Kotlin:
    print("Kotlin was introduced early with Dart and brought more Android development")
case .ObjectiveC:
    print("Objective C is much older language and is not reliable as Swift, Kotlin and Dart")
}
//211004
var swiftLanguage: Int? = 2014
var dartLanguage : Int? = nil

if let swiftLanguage = swiftLanguage {
    print(" Swift is closely related to Objective C in many ways as language was developed in \(swiftLanguage)")
}else{
    print("the language is not easy even though syntex is much simpilier compared Objective C")
}
if dartLanguage != nil {
    print("Dart is much similier and offers great optional safety like Swift")
}else{
    print("Dart is commonly utilized with Framework Flutter for android and IOS applications ")
}

struct swiftIsBest {
    let Syntex: String?
    let Learning: String?
    let time: String? = "Patience"
}
func swift(work: swiftIsBest) {
    guard let deepLearning = work.time else {
        print("deep learning is hard and challenge when learning Swift and understanding syntex")
        return
    }
        print("if \(deepLearning)you dont have time and deep learning it wont be easy!")
    guard let studying = work.Learning else {
        print("you got to study! as it will make you better at SwiftUI. Do projects! ")
        return
    }
    print("\(studying) is all about programming and getting better")
    guard let music = work.Syntex else {
        print("listen to music and be quiet with minimum distractions")
        return
    }
    print("you have to practice the \(music) and avoid distractions as much possible")
    return
  }
struct dartIsBest {
    let android: String? = "android"
    let IOS: String? = "apple"
    let openSource: Bool? = true
}

func dart(Google: dartIsBest) {
    guard let samsung = Google.android,
          let applePlayStore = Google.IOS,
          let documentation = Google.openSource else {
              print("Dart is awesome language because it can be used with IOS and Android devices! ")
              return
          }
    print("The Dart language was developed by \(samsung)")
    print("Dart was not developed by \(applePlayStore)")
    print("its \(documentation) that publications are all true" )

}

let Xcode = ["viewControllers", "UXDesign", "autoLayout", "outlets" ]
for IOS in Xcode {
    print("Lets start learning \(IOS) for Swift")
}
for Xcode in 1...4 {
    print("it will take \(Xcode) to \(Xcode * 2) hours for solid understanding!")
}

let timeOutDayForSwift = 17
let breakTime = 2
let deepConcentration = 5
 
   print("\(breakTime) hours of the day for break time. \(timeOutDayForSwift) hours for programming. This will equal \(timeOutDayForSwift - breakTime) hours including the 2 hour break time.")

let enumerations = 2
let loops = 3
let optionals = 1
let switchStatements = 1
let ifelses = 1
let guardStatements = 2
let review = 3

for _ in 1...optionals {
    guardStatements + optionals + review
}
print("\(guardStatements) hour for guard statements and \(optionals) hours for optionals would total \(review) hours review")
    for _ in 2...loops{
        enumerations - loops + review
    }
print("\(enumerations) hour for enumerations and \(loops) hours for loops would total 5 hours review.")


let studyTime = 25
var start = [Int](repeating: 0, count: studyTime + 1)
start[02] = +01; start[04] = +02; start[06] = +04; start[08] = +06
start[10] = -08; start[12] = -10; start[14] = -12; start[16] = -14
var foucas = 0
var changeTopics = 0

while foucas < changeTopics {
    changeTopics += 2
    if changeTopics == 10 { changeTopics = 1 }
    foucas += changeTopics
        if foucas < start.count {
            foucas += start[foucas]
        }
    }
    print("Studying is all about foucasing and changing Topics!")
