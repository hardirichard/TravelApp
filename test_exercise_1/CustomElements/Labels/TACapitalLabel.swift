//
//  TACapitalLabel.swift
//  test_exercise_1
//
//  Created by Richárd Hardi on 2020. 08. 25..
//  Copyright © 2020. Richárd Hardi. All rights reserved.
//

import UIKit

class TACapitalLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(text: String, size: CGFloat) {
        super.init(frame: .zero)
        self.text = text.uppercased()
        self.font = UIFont(name: "Avenir-Heavy", size: size)
        self.textColor = #colorLiteral(red: 0.918518126, green: 0.4087155163, blue: 0.3625132442, alpha: 1)
        
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
