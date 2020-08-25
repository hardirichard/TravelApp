//
//  SecondVC.swift
//  test_exercise_1
//
//  Created by Richárd Hardi on 2020. 08. 24..
//  Copyright © 2020. Richárd Hardi. All rights reserved.
//

import UIKit

class SecondVC: UIViewController, UIGestureRecognizerDelegate {
    
    let thankLabel = TALabel(text: "Thank You for travelling with us!", size: 30)

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        
        configure()
        configureNavBar()
    }
    
    
    func configureNavBar() {
        
        self.title = "Payment Complete"
        
        guard let navigationBar = self.navigationController?.navigationBar else {return}
        
        navigationBar.titleTextAttributes = [
                                    NSAttributedString.Key.foregroundColor: UIColor.white,
                                    NSAttributedString.Key.font: UIFont(name: "Avenir-Heavy", size: 20)!
        ]
        
        
        navigationBar.tintColor = .white
        
        
        let backBTN = UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: navigationController, action: #selector(UINavigationController.popViewController(animated:)))
        navigationItem.leftBarButtonItem = backBTN
        navigationController?.interactivePopGestureRecognizer?.delegate = self
    }
    
    
    func configure() {
        view.addSubview(thankLabel)
        
        thankLabel.translatesAutoresizingMaskIntoConstraints = false
        
        thankLabel.numberOfLines = 0
        thankLabel.lineBreakMode = .byWordWrapping
        thankLabel.sizeToFit()
        thankLabel.textAlignment = .center
        
        let padding: CGFloat = 30
        
        NSLayoutConstraint.activate([
            thankLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            thankLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            thankLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            thankLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding)
        ])
    }
}
