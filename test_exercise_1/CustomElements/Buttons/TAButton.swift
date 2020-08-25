//
//  TAButton.swift
//  test_exercise_1
//
//  Created by Richárd Hardi on 2020. 08. 24..
//  Copyright © 2020. Richárd Hardi. All rights reserved.
//

import UIKit

class TAButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(text: String) {
        super.init(frame: .zero)
        
        self.setTitle(text, for: .normal)
        
        configure()
    }
    
    
    func configure() {
        
        layer.cornerRadius = 20
        backgroundColor = #colorLiteral(red: 0.922459662, green: 0.4127188027, blue: 0.3622278571, alpha: 1)
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 20)
    }
}
