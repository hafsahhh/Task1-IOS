//
//  HomeTableViewCell.swift
//  Task1_IOS
//
//  Created by Siti Hafsah on 08/07/23.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var imageHomeCell: UIImageView!
    
    @IBOutlet weak var nameHomeCell: UILabel!
    
    @IBOutlet weak var addressHomeCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
