//
//  MessagesTableViewCell.swift
//  StackViews
//
//  Created by Mobark Alseif on 27/03/1443 AH.
//

import UIKit

class MessagesTableViewCell: UITableViewCell {

    @IBOutlet weak var dateMessage: UILabel!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var imageProfile: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
