//
//  ViewController.swift
//  treeview
//
//  Created by Nguyễn Minh Hiếu on 7/21/20.
//  Copyright © 2020 Nguyễn Minh Hiếu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    var location = -1
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.register(UINib(nibName: "LeagueTableViewCell", bundle: nil), forCellReuseIdentifier: "LeagueTableViewCell")
        tableview.dataSource = self
        tableview.delegate = self
        
        // Do any additional setup after loading the view.
    }

}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LeagueTableViewCell") as! LeagueTableViewCell
        return cell
    }
}

extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == location {
            return 120
        }
        else {
            return 60
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LeagueTableViewCell") as! LeagueTableViewCell
        location = indexPath.row
        cell.pushNationList(10)
        tableView.reloadData()
    }
}
