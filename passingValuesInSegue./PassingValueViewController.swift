//
//  PassingValueViewController.swift
//  passingValuesInSegue.
//
//  Created by IwasakIYuta on 2021/06/30.
//

import UIKit

class PassingValueViewController: UIViewController {
var valueText = ""
   
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        valueLabel.text = valueText
    }
    
    @IBAction func exit(segue: UIStoryboardSegue){}

}
