//
//  BorderButton.swift
//  swoosh
//
//  Created by rihab aldabbagh on 11/12/17.
//  Copyright © 2017 rihab aldabbagh. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func  awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
