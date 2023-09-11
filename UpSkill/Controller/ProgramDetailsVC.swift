//
//  ProgramDetailsVC.swift
//  UpSkill
//
//  Created by danish on 11/09/23.
//

import UIKit

class ProgramDetailsVC: UIViewController {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        textView.text = StringReverse.funStr
        
        //let reversedStr = StringReverse.reverseString(str: "Danish")
        //let reversedStr = StringReverse.reverse3(s: "12345")
        //print(reversedStr)
        var str = "1234"
        StringReverse.reverse4(&str)
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
