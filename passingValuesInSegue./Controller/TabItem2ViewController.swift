//
//  TabItem2ViewController.swift
//  passingValuesInSegue.
//
//  Created by IwasakIYuta on 2021/06/30.
//

import UIKit

class TabItem2ViewController: UIViewController {

    var passingitem2Label = "" //passingVlueViewController内でおｋが押された時にこちらに値が入るが遷移するときに表示させたいためにviewDidLoadでitem2Labelに入れる
    @IBOutlet weak var item2Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        item2Label.text = passingitem2Label
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
