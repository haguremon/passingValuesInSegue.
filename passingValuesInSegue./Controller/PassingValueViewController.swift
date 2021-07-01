//
//  PassingValueViewController.swift
//  passingValuesInSegue.
//
//  Created by IwasakIYuta on 2021/06/30.
//テスト

import UIKit

class PassingValueViewController: UIViewController {
var valueText = ""
    
    
    
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var item2TextField: UITextField!
    //アラートでの値渡しをやりたいから実装してみた
        @IBAction func passingValueItem2Button(_ sender: UIButton) {
            //alert
            let alert = UIAlertController(title: "TextFieldの値", message: "TextFieldの値を表示させますか？", preferredStyle: .alert)
           //okの選択肢のActionの作成
            let ok = UIAlertAction(
                title: "OK",
                style: .default,
                handler: {(action: UIAlertAction) in
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        let item2 = self.storyboard?.instantiateViewController(identifier: "item2") as! TabItem2ViewController //storyboardのidentifierを選択肢てそれをTabItem2ViewControllerにダウンキャストして
                        item2.passingitem2Label = self.item2TextField.text ?? "" //item2内のpassingitem2Labelにitem2TextField.textの値を入れる
                        self.present(item2, animated: true)//入れたまま遷移する
                        
                    } //handler内でitem2TextFieldに入ってる値時におｋが押された時に２秒以後にTabItem2ViewControllerに遷移して表示する予定にした
                })
            alert.addAction(ok)//alertにokアクションを追加
            //↓ キャンセルのアクション
            let cancel = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
            alert.addAction(cancel)
            present(alert, animated: true, completion: nil)//これでアクションを追加
          
            item2TextField.resignFirstResponder()//ボタンが押された時にキーボードを閉じる
        }
    
    @IBOutlet weak var item3TextField: UITextField!
    //特定のstoryboardに値を渡して遷移させる
    @IBAction func passingValueItem3Button(_ sender: UIButton) {
        let item3 = self.storyboard?.instantiateViewController(withIdentifier: "item3") as! TabItem3ViewController
        item3.passingitem3Label = item3TextField.text ?? ""
        self.present(item3, animated: true)
    
}
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        valueLabel.text = valueText
    }
    
    @IBAction func exit(segue: UIStoryboardSegue){}

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        item2TextField.endEditing(true)
    }

    
}
