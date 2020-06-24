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
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2 - size / 2), width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 0.798828125)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.25, green: 0.25, blue: 0.25, alpha: 1)
        currencyLbl.clipsToBounds = true
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.text = "€"
        addSubview(currencyLbl)
    }
    
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
        self.clipsToBounds = true
    
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            self.attributedPlaceholder = place
            self.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
