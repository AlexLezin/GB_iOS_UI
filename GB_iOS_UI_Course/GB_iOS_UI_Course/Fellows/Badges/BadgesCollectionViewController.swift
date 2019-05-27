//
//  BadgesCollectionViewController.swift
//  GB_iOS_UI_Course
//
//  Created by Alexander Lezin on 23/05/2019.
//  Copyright © 2019 Alexander Lezin. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class BadgesCollectionViewController: UICollectionViewController {

    var fellowBadges = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

 
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return fellowBadges.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BadgeCell", for: indexPath) as! BadgesCollectionViewCell
        let badge = fellowBadges[indexPath.row]
        cell.badgeImage.image = badge
        return cell
    }
}
