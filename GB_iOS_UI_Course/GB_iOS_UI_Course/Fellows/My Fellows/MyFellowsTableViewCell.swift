//
//  MyFellowsTableViewCell.swift
//  GB_iOS_UI_Course
//
//  Created by Alexander Lezin on 23/05/2019.
//  Copyright © 2019 Alexander Lezin. All rights reserved.
//

import UIKit

class MyFellowsTableViewCell: UITableViewCell {

    @IBOutlet weak var fellowLabel: UILabel!
    @IBOutlet weak var fellowAvatar: Avatar!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
