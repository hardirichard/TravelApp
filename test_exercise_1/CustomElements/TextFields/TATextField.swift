//
//  TATextField.swift
//  test_exercise_1
//
//  Created by Richárd Hardi on 2020. 08. 23..
//  Copyright © 2020. Richárd Hardi. All rights reserved.
//

import UIKit

class TATextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(placeholder: String) {
        super.init(frame: .zero)
        self.placeholder = placeholder
        
        configure()
    }
    
    
    func configure() {

        self.translatesAutoresizingMaskIntoConstraints = false
        addBottomBorder(with: #colorLiteral(red: 0.922459662, green: 0.4127188027, blue: 0.3622278571, alpha: 1), andWidth: 2)
        
        
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        paddingLeft(inset: 10)
        
        backgroundColor = #colorLiteral(red: 0.9214683175, green: 0.9216262698, blue: 0.9214583635, alpha: 1)
        textColor = .systemGray
        tintColor = .label
        textAlignment = .left
        font = UIFont.init(name: "Avenir", size: 18)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 12
        
        autocorrectionType = .no
        keyboardType = .default
        returnKeyType = .go
    }
    
    func addBottomBorder(with color: UIColor?, andWidth borderWidth: CGFloat) {
               let border = UIView()
               border.backgroundColor = color
               border.autoresizingMask = [.flexibleWidth, .flexibleTopMargin]
               border.frame = CGRect(x: 0, y: frame.size.height - borderWidth, width: frame.size.width, height: borderWidth)
               addSubview(border)
           }

}
