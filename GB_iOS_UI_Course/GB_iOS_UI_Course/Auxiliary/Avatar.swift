//
//  Avatar.swift
//  GB_iOS_UI_Course
//
//  Created by Alexander Lezin on 26/05/2019.
//  Copyright © 2019 Alexander Lezin. All rights reserved.
//

import UIKit

class Avatar: UIImageView {
    
    
    //MARK: - globals
    let size: (height: CGFloat, width: CGFloat) = (70.0, 70.0)
    let cornerRadius: CGFloat = 35.0
    
    ////MARK: - shadow parameters
    @IBInspectable var shadow: Bool = true
    @IBInspectable var shadowColor: UIColor = .black
    @IBInspectable var shadowOpacity: Float = 0.7
    @IBInspectable var shadowOffset: CGSize = CGSize(width: 5.0, height: 5.0)
    @IBInspectable var shadowRadius: CGFloat = 5.0
    
    func createAvatar(_ image: UIImage) {
        
        let imageContainer = UIView(frame: CGRect(x: 0.0, y: 0.0, width: size.width, height: size.height))
        
        if shadow {
            imageContainer.clipsToBounds = false
            imageContainer.layer.shadowColor = shadowColor.cgColor
            imageContainer.layer.shadowOpacity = shadowOpacity
            imageContainer.layer.shadowOffset = shadowOffset
            imageContainer.layer.shadowRadius = shadowRadius
            imageContainer.layer.shadowPath = UIBezierPath(roundedRect: imageContainer.bounds, cornerRadius: cornerRadius).cgPath
        }
        
        let imageView = UIImageView(frame: imageContainer.bounds)
        
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = cornerRadius
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.borderWidth = 1.0
        imageView.image = image
        imageView.contentMode = .scaleAspectFill
        
        self.addSubview(imageContainer)
        imageContainer.addSubview(imageView)
        
    }
}
