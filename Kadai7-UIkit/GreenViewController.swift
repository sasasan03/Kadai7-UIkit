//
//  GreenViewController.swift
//  Kadai7-UIkit
//
//  Created by sako0602 on 2023/03/25.
//

import UIKit

struct emptyError: Error {
    let emptyError: String
}

//struct Num {
//    let num: String
//}

class GreenViewController: UIViewController {

    @IBOutlet weak var numText1: UITextField!
    @IBOutlet weak var numText2: UITextField!
    @IBOutlet weak var total: UILabel!
    
    @IBAction func minusButton(_ sender: Any)  {
        let numText1 = numText1.text ?? ""
        let numText2 = numText2.text ?? ""
        let num1 = textFieldCheck(numText: numText1)
        let num2 = textFieldCheck(numText: numText2)
        switch (num1,num2) { //switch はブレイク？ ifかswitch
        case (.success(let num1), .success(let num2)):
            guard let n1 = Int(num1) else {
                break
            }
            guard let n2 = Int(num2) else {
                break
            }
            total.text = String(n1 - n2)
        case (.failure(let error), .success(_)):
            total.text = error.emptyError
        case (.success(_), .failure(let error)):
            total.text = error.emptyError
        case (.failure(let e1), .failure(_)):
            total.text = e1.emptyError
//        default: break//一度無くして
        }
        
    }
    
    func textFieldCheck(numText: String) -> Result<String, emptyError>{//optional型で返す
        if !numText.isEmpty {
            return Result.success(numText)
        }
        return Result.failure(emptyError(emptyError: "空だよ"))
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
