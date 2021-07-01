//
//  CustomButtonView.swift
//  swoosh-App
//
//  Created by Юра Маргітич on 27.06.2021.
//

import UIKit

class CustomButtonView: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        layer.borderWidth = 2.0
    }

}
