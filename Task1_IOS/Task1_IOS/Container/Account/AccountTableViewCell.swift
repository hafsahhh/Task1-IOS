//
//  AccountTableViewCell.swift
//  Task1_IOS
//
//  Created by Siti Hafsah on 09/07/23.
//

import UIKit

class AccountTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imageAccountCell: UIImageView!
    
    
    @IBOutlet weak var text1AccountCell: UILabel!
    
    @IBOutlet weak var text2AccountCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
