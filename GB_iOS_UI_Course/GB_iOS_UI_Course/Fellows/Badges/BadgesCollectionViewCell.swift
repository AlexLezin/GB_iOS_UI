//
//  BadgesCollectionViewCell.swift
//  GB_iOS_UI_Course
//
//  Created by Alexander Lezin on 23/05/2019.
//  Copyright © 2019 Alexander Lezin. All rights reserved.
//

import UIKit

class BadgesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var badgeImage: UIImageView!
    @IBOutlet weak var likeButton: LikeButton!
    @IBOutlet weak var likeCounter: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func pressLike(_ sender: LikeButton) {
        
        if sender.bool {
            sender.bool = false
        } else {
            sender.bool = true
        }
        
        if sender.bool {
            likeCounter.text = String(Int(likeCounter.text!)! - 1)
        } else {
            likeCounter.text = String(Int(likeCounter.text!)! + 1)
        }
    }
}
