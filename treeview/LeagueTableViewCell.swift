//
//  LeagueTableViewCell.swift
//  marozi
//
//  Created by Huu Nghia on 7/2/20.
//  Copyright © 2020 TungTran. All rights reserved.
//

import UIKit



class LeagueTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tableClub: UITableView!
   
    var numberLeague = 0
    var isTapClub = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tableClub.register(UINib(nibName: "TeamTableViewCell", bundle: nil), forCellReuseIdentifier: "TeamTableViewCell")
        tableClub.dataSource = self
        tableClub.delegate = self
        tableClub.isScrollEnabled = false
        // Initialization code
    }
    // bien check seclect cell tableview to hay chua
    // func push number of row and insert row
    func pushNationList(_ number : Int){
        self.numberLeague = number
        tableClub.reloadData()
    }
    
 
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func fillData(title: String) {
        titleLabel.text = title
    }
}

extension LeagueTableViewCell : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberLeague
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeamTableViewCell") as! TeamTableViewCell
        return cell
    }

}

extension LeagueTableViewCell : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print("ddd")
    }
}

