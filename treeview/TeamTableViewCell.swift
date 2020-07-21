//
//  TeamTableViewCell.swift
//  marozi
//
//  Created by Huu Nghia on 7/2/20.
//  Copyright © 2020 TungTran. All rights reserved.
//

import UIKit

class TeamTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func fillData(title: String) {
        titleLabel.text = title
    }
    
}
