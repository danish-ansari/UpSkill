//
//  BasicProgramsVC.swift
//  UpSkill
//
//  Created by danish on 01/09/23.
//

import UIKit

class BasicProgramsVC: UIViewController {
    @IBOutlet weak var tableView:UITableView!
    
    let options = ["Reverse a String"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension BasicProgramsVC: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "basicProgramCell")
        if(cell == nil){
            cell = UITableViewCell(style: .default, reuseIdentifier: "basicProgramCell")
        }
        cell?.textLabel?.text = options[indexPath.row]
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "programDetailsSegue", sender: indexPath)
    }
}
