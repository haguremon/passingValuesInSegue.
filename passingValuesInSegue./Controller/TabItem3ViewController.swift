//
//  TabItem3ViewController.swift
//  passingValuesInSegue.
//
//  Created by IwasakIYuta on 2021/06/30.
//

import UIKit

class TabItem3ViewController: UIViewController {
    var passingitem3Label = ""
    
    @IBOutlet weak var item3Label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        item3Label.text = passingitem3Label
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
