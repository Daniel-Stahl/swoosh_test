//
//  ButtonBorder.swift
//  swoosh
//
//  Created by Daniel Stahl on 9/5/17.
//  Copyright © 2017 Daniel Stahl. All rights reserved.
//

import UIKit

class buttonBorder: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 2
    }
}
