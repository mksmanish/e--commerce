//
//  DisplaycelldataTableViewCell.swift
//  assignmentrest2
//
//  Created by admin on 24/02/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit
protocol removecell {
    func remove(index: Int)
}
class DisplaycelldataTableViewCell: UITableViewCell {
    var delegate:removecell?
    var index:Int!
    @IBOutlet weak var viewcontent: UIView!
    @IBOutlet weak var lblnames: UILabel!
    @IBOutlet weak var lblprice: UILabel!
    @IBOutlet weak var lblcolor: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

    @IBAction func btnremove(_ sender: Any) {
         self.delegate?.remove(index: index)
    }
}
