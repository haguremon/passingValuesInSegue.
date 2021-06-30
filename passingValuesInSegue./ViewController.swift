//
//  ViewController.swift
//  passingValuesInSegue.
//
//  Created by IwasakIYuta on 2021/06/30.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var passingTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func passingButton(_ sender: UIButton) {
    
        passingTextField.resignFirstResponder()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        passingTextField.endEditing(true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPassingValueSegue" {
            let passinfValue = segue.destination as! PassingValueViewController
            passinfValue.valueText = passingTextField.text ?? ""
        }
    }
    
}

