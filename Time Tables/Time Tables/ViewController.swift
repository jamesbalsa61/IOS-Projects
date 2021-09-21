//
//  ViewController.swift
//  Time Tables
//
//  Created by Michael Balsa on 9/19/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var Slider: UISlider!
    
    @IBOutlet var table: UITableView!
    @IBAction func SliderChange(_ sender: Any) {
        table.reloadData()
        
    }
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50 
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = String((Int(Slider.value * 20)) * (indexPath.row + 1))
        return cell
    }
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

