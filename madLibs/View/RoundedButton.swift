//
//  RoundedButton.swift
//  madLibs
//
//  Created by Gurpal Bhoot on 10/31/18.
//  Copyright © 2018 Gurpal Bhoot. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureButton()
    }
    
    override func prepareForInterfaceBuilder() {
        configureButton()
    }
    
    func configureButton() {
        backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        layer.cornerRadius = 5
        setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        clipsToBounds = true
    }
}
