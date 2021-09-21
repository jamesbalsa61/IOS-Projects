//
//  ThirdViewController.swift
//  ToDoList
//
//  Created by Michael Balsa on 9/19/21.
//

import UIKit

class ThirdViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet var Text: UITextField!
    @IBAction func Add(_ sender: Any) {
        
        //Storage
        let itemsObject = UserDefaults.standard.object(forKey: "items")  //pull objects from permanent storage
        var items:[String]
        if let tempItems = itemsObject as? [String]{ //Creates array
            items = tempItems                     // New Variable
            items.append(Text.text!) //Adds object into array
            print(items)
        }else{
            items = [Text.text!] //creates new array if not true
        }
        UserDefaults.standard.set(items, forKey: "items") //Saves items
        Text.text = "" //reset the text field
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true) //turns keybord off
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
