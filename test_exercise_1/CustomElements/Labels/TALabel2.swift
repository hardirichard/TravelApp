//
//  TALabel2.swift
//  test_exercise_1
//
//  Created by Richárd Hardi on 2020. 08. 24..
//  Copyright © 2020. Richárd Hardi. All rights reserved.
//

import UIKit

class TALabel2: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(text: String, size: CGFloat) {
        super.init(frame: .zero)
        self.numberOfLines = 0
        self.lineBreakMode = .byWordWrapping
        self.sizeToFit()
        self.text = text
        self.font = UIFont(name: "Avenir", size: size)
        self.textColor = .systemGray
        
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
