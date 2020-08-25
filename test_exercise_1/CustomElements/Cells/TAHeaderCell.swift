//
//  TAHeaderCell.swift
//  test_exercise_1
//
//  Created by Richárd Hardi on 2020. 08. 25..
//  Copyright © 2020. Richárd Hardi. All rights reserved.
//

import UIKit

class TAHeaderCell: UIView {
    
    let mainLabel = UILabel()
    let secondaryLabel = UILabel()
    let expandButton = UIButton()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureMainLabel()
        configureSecondaryLabel()
        configureExpandButton()
        
        configureView()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func set(mainLabel: String, secondaryLabel: String) {
        self.mainLabel.text = mainLabel
        self.secondaryLabel.text = secondaryLabel
    }
    
    
    func configureView() {
        self.addBottomBorder(with: .systemGray, andWidth: 0.5)
        self.backgroundColor = #colorLiteral(red: 0.9214683175, green: 0.9216262698, blue: 0.9214583635, alpha: 1)
        addSubview(mainLabel)
        addSubview(secondaryLabel)
        addSubview(expandButton)
        
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        secondaryLabel.translatesAutoresizingMaskIntoConstraints = false
        expandButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            mainLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -10),
            mainLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            secondaryLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 10),
            secondaryLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            expandButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            expandButton.heightAnchor.constraint(equalToConstant: 40),
            expandButton.widthAnchor.constraint(equalToConstant: 40),
            expandButton.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    
    func configureMainLabel() {
        mainLabel.text = "Travelling to Siófok"
        mainLabel.textColor = #colorLiteral(red: 0.918518126, green: 0.4087155163, blue: 0.3625132442, alpha: 1)
        mainLabel.font = UIFont(name: "Avenir-Heavy", size: 20)
    }
    
    
    func configureSecondaryLabel() {
        secondaryLabel.text = "12:00"
        secondaryLabel.textColor = .systemGray
        secondaryLabel.font = UIFont(name: "Avenir-Heavy", size: 15)
    }
    
    
    func configureExpandButton() {
        expandButton.backgroundColor = #colorLiteral(red: 0.874414444, green: 0.8745647073, blue: 0.8744048476, alpha: 1)
        expandButton.layer.cornerRadius = 20
        expandButton.setImage(UIImage(cgImage: (UIImage(named: "triangle")?.cgImage)!, scale: 2.9, orientation: .up), for: .normal)
    }
    
    
    func spinImage() {
        expandButton.imageView?.transform = CGAffineTransform(rotationAngle: .pi/2)
        expandButton.transform = .identity
    }
    
    
    func addBottomBorder(with color: UIColor?, andWidth borderWidth: CGFloat) {
        let border = UIView()
        border.backgroundColor = color
        border.autoresizingMask = [.flexibleWidth, .flexibleTopMargin]
        border.frame = CGRect(x: 0, y: frame.size.height - borderWidth, width: frame.size.width, height: borderWidth)
        addSubview(border)
    }
}


