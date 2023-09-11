//
//  DashboardViewController.swift
//  UpSkill
//
//  Created by danish on 01/09/23.
//

import UIKit

class DashboardViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let options = ["Initial Learnings"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}


extension DashboardViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "dashboardCell")
        if cell == nil{
            cell = UITableViewCell(style: .default, reuseIdentifier: "dashboardCell")
        }
        cell?.textLabel?.text = options[indexPath.row]
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "initialLearningSegue", sender: indexPath)
    }
}


