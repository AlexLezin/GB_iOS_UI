//
//  Fellow.swift
//  GB_iOS_UI_Course
//
//  Created by Alexander Lezin on 23/05/2019.
//  Copyright © 2019 Alexander Lezin. All rights reserved.
//

import UIKit

struct Fellow {
    var fellowName: String
    var fellowAvatar: UIImage
    var fellowBadges: [UIImage]
    
}

let steveJobs = Fellow(fellowName: "Steeve Jobs", fellowAvatar: #imageLiteral(resourceName: "Image"), fellowBadges: [#imageLiteral(resourceName: "Swift"), #imageLiteral(resourceName: "Python"), #imageLiteral(resourceName: "Kotlin")])
let johnIve = Fellow(fellowName: "Johnathan Ive", fellowAvatar: #imageLiteral(resourceName: "Image-2"), fellowBadges: [#imageLiteral(resourceName: "Swift"), #imageLiteral(resourceName: "Python"), #imageLiteral(resourceName: "Android")])
let timCook = Fellow(fellowName: "Tim Cook", fellowAvatar: #imageLiteral(resourceName: "Image-3"), fellowBadges: [#imageLiteral(resourceName: "Swift"), #imageLiteral(resourceName: "Java"), #imageLiteral(resourceName: "PHP")])

