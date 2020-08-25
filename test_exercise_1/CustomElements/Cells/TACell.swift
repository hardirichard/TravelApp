//
//  TACell.swift
//  test_exercise_1
//
//  Created by Richárd Hardi on 2020. 08. 25..
//  Copyright © 2020. Richárd Hardi. All rights reserved.
//

import UIKit

class TACell: UITableViewCell {
    
    
    let departureLabel = TACapitalLabel(text: "departure", size: 13)
    let departureNameLabel = TALabel(text: "Budapest Déli pu.", size: 18)
    let departureTimeLabel = TALabel(text: "12:00", size: 15)
    let departureDot = UIImageView.init(image: UIImage(named: "circle"))
    
    let dotLine = UIImageView.init(image: UIImage(named: "dotted_line"))
    
    
    let arrivalLabel = TACapitalLabel(text: "arrival", size: 13)
    let arrivalNameLabel = TALabel(text: "Siófok", size: 18)
    let arrivalTimeLabel = TALabel(text: "13:45", size: 15)
    let arrivalDot = UIImageView.init(image: UIImage(named: "circle"))
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure() {
        self.backgroundColor = #colorLiteral(red: 0.9214683175, green: 0.9216262698, blue: 0.9214583635, alpha: 1)
        departureDot.contentMode = .scaleAspectFit
        dotLine.contentMode = .scaleAspectFit
        dotLine.image?.withTintColor(#colorLiteral(red: 0.918518126, green: 0.4087155163, blue: 0.3625132442, alpha: 1))
        
        addSubview(departureDot)
        addSubview(departureLabel)
        addSubview(departureNameLabel)
        addSubview(departureTimeLabel)
        addSubview(dotLine)
        
        addSubview(arrivalDot)
        addSubview(arrivalLabel)
        addSubview(arrivalNameLabel)
        addSubview(arrivalTimeLabel)
        
        
        departureDot.translatesAutoresizingMaskIntoConstraints = false
        departureLabel.translatesAutoresizingMaskIntoConstraints = false
        departureNameLabel.translatesAutoresizingMaskIntoConstraints = false
        departureTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        dotLine.translatesAutoresizingMaskIntoConstraints = false
        
        arrivalDot.translatesAutoresizingMaskIntoConstraints = false
        arrivalLabel.translatesAutoresizingMaskIntoConstraints = false
        arrivalNameLabel.translatesAutoresizingMaskIntoConstraints = false
        arrivalTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            departureDot.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            departureDot.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            departureDot.heightAnchor.constraint(equalToConstant: 11),
            departureDot.widthAnchor.constraint(equalToConstant: 11),
            
            departureLabel.bottomAnchor.constraint(equalTo: departureDot.centerYAnchor, constant: -5),
            departureLabel.leadingAnchor.constraint(equalTo: departureDot.trailingAnchor, constant: 10),
            departureLabel.trailingAnchor.constraint(equalTo: departureTimeLabel.leadingAnchor, constant: -20),
            departureLabel.heightAnchor.constraint(equalToConstant: 10),
            
            departureNameLabel.topAnchor.constraint(equalTo: departureDot.centerYAnchor, constant: 5),
            departureNameLabel.leadingAnchor.constraint(equalTo: departureDot.trailingAnchor, constant: 10),
            departureNameLabel.trailingAnchor.constraint(equalTo: departureTimeLabel.leadingAnchor, constant: 10),
            departureNameLabel.heightAnchor.constraint(equalToConstant: 10),
            
            departureTimeLabel.centerYAnchor.constraint(equalTo: departureDot.centerYAnchor),
            departureTimeLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            departureTimeLabel.heightAnchor.constraint(equalToConstant: 20),
            departureTimeLabel.widthAnchor.constraint(equalToConstant: 50),
            
            dotLine.topAnchor.constraint(equalTo: departureDot.bottomAnchor, constant: 1),
            dotLine.centerXAnchor.constraint(equalTo: departureDot.centerXAnchor),
            dotLine.heightAnchor.constraint(equalToConstant: 110),
            
            
            
            arrivalDot.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -40),
            arrivalDot.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            arrivalDot.heightAnchor.constraint(equalToConstant: 11),
            arrivalDot.widthAnchor.constraint(equalToConstant: 11),
            
            arrivalLabel.bottomAnchor.constraint(equalTo: arrivalDot.centerYAnchor, constant: -5),
            arrivalLabel.leadingAnchor.constraint(equalTo: departureDot.trailingAnchor, constant: 10),
            arrivalLabel.trailingAnchor.constraint(equalTo: arrivalTimeLabel.leadingAnchor, constant: -20),
            arrivalLabel.heightAnchor.constraint(equalToConstant: 10),
            
            arrivalNameLabel.topAnchor.constraint(equalTo: arrivalDot.centerYAnchor, constant: 5),
            arrivalNameLabel.leadingAnchor.constraint(equalTo: departureDot.trailingAnchor, constant: 10),
            arrivalNameLabel.trailingAnchor.constraint(equalTo: arrivalTimeLabel.leadingAnchor, constant: 10),
            arrivalNameLabel.heightAnchor.constraint(equalToConstant: 10),
            
            arrivalTimeLabel.centerYAnchor.constraint(equalTo: arrivalDot.centerYAnchor),
            arrivalTimeLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            arrivalTimeLabel.heightAnchor.constraint(equalToConstant: 20),
            arrivalTimeLabel.widthAnchor.constraint(equalToConstant: 50),
        ])
    }
}
