//
//  Fellow.swift
//  GB_iOS_UI_Course
//
//  Created by Alexander Lezin on 23/05/2019.
//  Copyright © 2019 Alexander Lezin. All rights reserved.
//

import UIKit

struct Fellow: Comparable {
    static func < (lhs: Fellow, rhs: Fellow) -> Bool {
        <#code#>
    }
    
    let fellowName: String
    let fellowSurname: String
    let fellowMiddleName: String?
    var fellowFullName: String {
        get {
            let fullName: String
            if fellowMiddleName != nil {
                fullName = "\(fellowName) \(fellowMiddleName!) \(fellowSurname)"
            } else {
                fullName = "\(fellowName) \(fellowSurname)"
            }
            return fullName
        }
    }
    
    var fellowChar: String {
        get {
            let char = fellowSurname.prefix(1)
            return String(char)
        }
    }
    
    var fellowAvatar: UIImage
    var fellowBadges: [UIImage]
    
    init(name: String, surname: String, middleName: String? = nil, avatar: UIImage, badges: [UIImage]) {
        self.fellowName = name
        self.fellowSurname = surname
        self.fellowMiddleName = middleName
        self.fellowAvatar = avatar
        self.fellowBadges = badges
    }
    
}

let steveJobs = Fellow(name: "Steven",
                       surname: "Jobs",
                       middleName: "Paul",
                       avatar: #imageLiteral(resourceName: "Image"),
                       badges: [#imageLiteral(resourceName: "Swift"), #imageLiteral(resourceName: "Python"), #imageLiteral(resourceName: "Kotlin")])
let johnIve = Fellow(name: "Johnathan",
                     surname: "Ive",
                     avatar: #imageLiteral(resourceName: "Image-2"),
                     badges: [#imageLiteral(resourceName: "Swift"), #imageLiteral(resourceName: "Python"), #imageLiteral(resourceName: "Android")])
let timCook = Fellow(name: "Tim",
                     surname: "Cook",
                     avatar: #imageLiteral(resourceName: "Image-3"),
                     badges: [#imageLiteral(resourceName: "Swift"), #imageLiteral(resourceName: "Java"), #imageLiteral(resourceName: "PHP"), #imageLiteral(resourceName: "Kotlin")])
let vanJacobson = Fellow(name: "Van",
                         surname: "Jacobson",
                         avatar: #imageLiteral(resourceName: "Image-4"),
                         badges: [#imageLiteral(resourceName: "Python"), #imageLiteral(resourceName: "Swift")])
