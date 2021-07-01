//
//  RestoreDataViewController.swift
//  passingValuesInSegue.
//
//  Created by IwasakIYuta on 2021/07/01.
//

import UIKit

class RestoreDataViewController: UIViewController {
    @IBOutlet weak var restoreDataLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
    @IBAction func transitionButton(_ sender: UIButton) {
    performSegue(withIdentifier: "toViewController", sender: nil)
    }
    //戻るときにpassingTextFieldに入力した値をrestoreDataLabelに表示させる
    @IBAction func exitData(segue: UIStoryboardSegue){
        let restoreData = segue.source as! ViewController //restoreDataはViewController型で
        restoreDataLabel.text = restoreData.passingTextField.text
    }
}
