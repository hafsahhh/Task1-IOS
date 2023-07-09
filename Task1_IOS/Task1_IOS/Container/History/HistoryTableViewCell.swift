//
//  HistoryTableViewCell.swift
//  Task1_IOS
//
//  Created by Siti Hafsah on 08/07/23.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {

    @IBOutlet weak var imageHistoryCell: UIImageView!
    
    @IBOutlet weak var nameHistoryCell: UILabel!
    
    @IBOutlet weak var addressHistoryCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
