//
//  RestoreDataViewController.swift
//  passingValuesInSegue.
//
//  Created by IwasakIYuta on 2021/07/01.
//

import UIKit

class RestoreDataViewController: UIViewController {
    @IBOutlet weak var restoreDataLabel: UILabel!
    
    
    @IBOutlet weak var ageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ageTextField.keyboardType = .numberPad
    }
    
    @IBAction func transitionButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toViewController", sender: nil)
    }
    //戻るときにpassingTextFieldに入力した値をrestoreDataLabelに表示させる
    @IBAction func exitData(segue: UIStoryboardSegue){
        let restoreData = segue.source as! ViewController //restoreDataはViewController型で
        restoreDataLabel.text = restoreData.passingTextField.text
    }
    //2021年7月現在の未成年は20歳以下//ageTextFieldの値で画面を切り替えることができたけど上手くいってない改善余地あり
    @IBAction func underageSelectionButton(_ sender: UIButton) {
        let age = Int(ageTextField.text!) ?? 0
        if age < 20 {
                        let minors =  self.storyboard?.instantiateViewController(identifier: "Minors") as! MinorsViewController
                        self.present(minors, animated: true)
            //
            //performSegue(withIdentifier: "toMinors", sender: nil)//toMinorsのセグエがないとエラーが出たけどこれのセグエのIDを使うところが分からないのでstoryboardidの方を使う
            
            
        } else {
            let adults = self.storyboard?.instantiateViewController(identifier: "Adults") as! ViewController
            self.present(adults, animated: true)
            //performSegue(withIdentifier: "toAdults", sender: nil)
        }
        
        
    }
    @IBAction func exit(segue: UIStoryboardSegue){}
    
}




