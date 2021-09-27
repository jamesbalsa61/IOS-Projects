import UIKit

//Information Database


struct Information {
let name: String
let ID: Int
let DateofBirth: Int
var Password: Int
}

struct Supervisior {
    let name: String
    let ID: Int
    let DateofBirth: Int
    var Password: Int?
    var email: String?
}
struct Organization {
let name: String
let Workers: [Information]
    
    func Worker(withID ID: Int) -> Information? {
        for information in Workers {
            if information.ID == ID {
                return information
            }
        }
    return nil//passing ID into function and returning Integer
    }


func SupervisiorInfo(for supervisior: Supervisior ) {
    guard let name = Worker(withID: supervisior.ID) else {
        print("No Supervisior with the id \(supervisior.ID) is able login into \(name)!")
        return
    }
    print("\(supervisior.name) is in charge of \(name.name)")
    print("The user has \(supervisior.email ?? "no") email")
    guard let email = supervisior.email else {
        print ("Email address cannot be located")
        return
    }
    print("This is his email address \(email)")
  }
}

let Workers = [
    Information(name: "Michael", ID: 1232804986, DateofBirth: 051798, Password: 123456),
    Information(name: "Melania", ID: 123765, DateofBirth: 051898, Password: 23456),
    Information(name: "Foris", ID: 9878765, DateofBirth: 010197, Password: 6789543),
]

let HMLA773  = Organization(name: "HMLA773", Workers: Workers)

let michael = Supervisior(name: "Michael", ID: 1232804986, DateofBirth: 051798)

let foris = Supervisior(name: "Foris", ID: 1213455667, DateofBirth: 010197)

HMLA773.SupervisiorInfo(for: michael)
HMLA773.SupervisiorInfo(for: foris  )
