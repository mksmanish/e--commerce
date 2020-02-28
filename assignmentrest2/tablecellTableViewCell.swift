//
//  tablecellTableViewCell.swift
//  assignmentrest2
//
//  Created by admin on 15/02/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class tablecellTableViewCell: UITableViewCell {
    @IBOutlet weak var lblitems: UILabel!
    
    @IBOutlet weak var contentview: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
