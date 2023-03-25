//
//  GreenViewController.swift
//  Kadai7-UIkit
//
//  Created by sako0602 on 2023/03/25.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet weak var numText1: UITextField!
    @IBOutlet weak var numText2: UITextField!
    @IBOutlet weak var total: UILabel!
    
    @IBAction func minusButton(_ sender: Any)  {
        guard let num1 = Int(numText1.text ?? "") else {
            return
        }
        guard let num2 = Int(numText2.text ?? "") else {
            return 
        }
        total.text = String(num1 + num2)
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
