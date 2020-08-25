//
//  FirstVC.swift
//  test_exercise_1
//
//  Created by Richárd Hardi on 2020. 08. 23..
//  Copyright © 2020. Richárd Hardi. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {
    
    let scrollView = UIScrollView()
    
    let personalLabel = TALabel(text: "Your Details", size: 20)
    let firstNameTextField = TATextField(placeholder: "First Name")
    let secondNameTextField = TATextField(placeholder: "Second Name")
    
    let journeyLabel = TALabel(text: "Your Journey", size: 20)
    let journeyTable = SelfSizedTableView()
    let headerCell = TAHeaderCell()
  
    
    let additionalLabel = TALabel(text: "Additinal info", size: 20)
    let infoLabel = TALabel2(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exerciation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", size: 20)
    
    let button = TAButton(text: "Next")

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        configureNavigationBar()
        configureView()
        configureScrollView()
        configureButton()
        configureTableView()
    }

    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.layer.cornerRadius = 30
        self.navigationController?.navigationBar.clipsToBounds = true
        self.navigationController?.navigationBar.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMaxYCorner]
    }
    
    
    var sectionNames = ["Main"]
    var sectionItems = ["Item1"]
    var isExpanded = true
    var rows = 1
    var scrollViewHeight: CGFloat = 1200
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        headerCell.frame(forAlignmentRect: CGRect(x: 0, y: 0, width: journeyTable.frame.size.width, height: 80))
        
        let view = headerCell
        view.expandButton.addTarget(self, action: #selector(expandClose), for: .touchUpInside)
        
        return view
    }
    
    
    @objc func expandClose() {
        var indexPaths = [IndexPath]()
        let indexPath = IndexPath(row: 0, section: 0)
        indexPaths.append(indexPath)
        
        if isExpanded == true {
            headerCell.expandButton.transform = CGAffineTransform(rotationAngle: .pi)
            isExpanded = false
            rows = 0
        } else {
            headerCell.expandButton.transform = CGAffineTransform(rotationAngle: .pi*2)
            isExpanded = true
            rows = 1
        }
        
        
        if isExpanded {
            journeyTable.insertRows(at: indexPaths, with: .top)
       
        } else {
            journeyTable.deleteRows(at: indexPaths, with: .top)
        }
    }
    
    
    func configureNavigationBar() {
        
        self.title = "My Travel App"
        guard let navigationBar = self.navigationController?.navigationBar else {return}

        navigationBar.titleTextAttributes = [
                                    NSAttributedString.Key.foregroundColor: UIColor.white,
                                    NSAttributedString.Key.font: UIFont(name: "Avenir-Heavy", size: 20)!
        ]
        
        navigationController?.setStatusBar(backgroundColor: #colorLiteral(red: 0.918518126, green: 0.4087155163, blue: 0.3625132442, alpha: 1))
        navigationBar.barTintColor = #colorLiteral(red: 0.9019607843, green: 0.2980392157, blue: 0.2431372549, alpha: 1)
        navigationBar.isTranslucent = true
    }
    
    
    func configureView() {
        view.addSubview(scrollView)
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.contentSize = CGSize(width: view.frame.width, height: scrollViewHeight)
    
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
    
    func configureScrollView() {
    
        scrollView.addSubview(personalLabel)
        scrollView.addSubview(firstNameTextField)
        scrollView.addSubview(secondNameTextField)
        
        scrollView.addSubview(journeyLabel)
        scrollView.addSubview(journeyTable)
        
        scrollView.addSubview(additionalLabel)
        scrollView.addSubview(infoLabel)
        scrollView.addSubview(button)
        
        personalLabel.translatesAutoresizingMaskIntoConstraints = false
        firstNameTextField.translatesAutoresizingMaskIntoConstraints = false
        secondNameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        journeyLabel.translatesAutoresizingMaskIntoConstraints = false
        journeyTable.translatesAutoresizingMaskIntoConstraints = false
        
        additionalLabel.translatesAutoresizingMaskIntoConstraints = false
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        
        let padding: CGFloat = 30
        
        NSLayoutConstraint.activate([
            personalLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 40),
            personalLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: padding),
            personalLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            personalLabel.heightAnchor.constraint(equalToConstant: 30),
            
            firstNameTextField.topAnchor.constraint(equalTo: personalLabel.bottomAnchor, constant: 10),
            firstNameTextField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: padding),
            firstNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            firstNameTextField.heightAnchor.constraint(equalToConstant: 60),
            
            secondNameTextField.topAnchor.constraint(equalTo: firstNameTextField.bottomAnchor, constant: padding),
            secondNameTextField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: padding),
            secondNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            secondNameTextField.heightAnchor.constraint(equalToConstant: 60),
            
            journeyLabel.topAnchor.constraint(equalTo: secondNameTextField.bottomAnchor, constant: 40),
            journeyLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: padding),
            journeyLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            journeyLabel.heightAnchor.constraint(equalToConstant: 30),
            
            journeyTable.topAnchor.constraint(equalTo: journeyLabel.bottomAnchor, constant: 20),
            journeyTable.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: padding),
            journeyTable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            //journeyTable.heightAnchor.constraint(equalToConstant: tableViewHeight),
            
            additionalLabel.topAnchor.constraint(equalTo: journeyTable.bottomAnchor, constant: 40),
            additionalLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: padding),
            additionalLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            additionalLabel.heightAnchor.constraint(equalToConstant: 30),
            
            infoLabel.topAnchor.constraint(equalTo: additionalLabel.bottomAnchor, constant: 15),
            infoLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: padding),
            infoLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            
            button.bottomAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 80),
            button.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: padding),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            button.heightAnchor.constraint(equalToConstant: 60),
            
        ])
    }
    
    
    func configureButton() {
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    
    @objc func buttonPressed() {
        navigationController?.pushViewController(SecondVC(), animated: true)
    }
    
    
    func configureTableView() {
        journeyTable.maxHeight = 280
        journeyTable.backgroundColor = .systemRed
        journeyTable.layer.cornerRadius = 20
        journeyTable.sectionHeaderHeight = 80
        
        setTableViewDelegates()
        
        journeyTable.rowHeight = 200
        journeyTable.register(TACell.self, forCellReuseIdentifier: "Cell")
    }
    
    func setTableViewDelegates() {
        journeyTable.delegate = self
        journeyTable.dataSource = self
    }
}


extension FirstVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if isExpanded == true {
            return 1
        } else {
            return 0
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = journeyTable.dequeueReusableCell(withIdentifier: "Cell") as! TACell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
 
