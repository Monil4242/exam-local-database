//
//  myTableViewCell.swift
//  exam local database
//
//  Created by monil sojitra on 12/04/23.
//

import UIKit

class myTableViewCell: UITableViewCell {

    
    @IBOutlet weak var idLabel: UILabel!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
