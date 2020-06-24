//
//  CurrencyTxtField.swift
//  app-window-shopper
//
//  Created by Maïlys Perez on 24/06/2020.
//  Copyright © 2020 Maïlys Perez. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        self.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2049978596)
        self.layer.cornerRadius = 5.0
        self.textAlignment = .center
    
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            self.attributedPlaceholder = place
            self.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
