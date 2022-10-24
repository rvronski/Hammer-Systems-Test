//
//  ScrollHeaderTableView.swift
//  Hammer Systems TestApp
//
//  Created by ROMAN VRONSKY on 24.10.2022.
//

import UIKit

class ScrollHeaderTableView: UITableViewHeaderFooterView {
    
    private lazy var menuButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Рыба", for: .normal)
        button.setTitleColor(UIColor.systemPink, for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.systemPink.cgColor
        button.tintColor = .systemPink
        button.backgroundColor = .systemBackground
        button.layer.cornerRadius = 10
        return button
    }()
    
    private lazy var menuButton1: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Мясо", for: .normal)
        button.setTitleColor(UIColor.systemPink, for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.systemPink.cgColor
        button.tintColor = .systemPink
        button.backgroundColor = .systemBackground
        button.layer.cornerRadius = 10
        return button
    }()
    
    private lazy var menuButton2: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Пицца", for: .normal)
        button.setTitleColor(UIColor.systemPink, for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.systemPink.cgColor
        button.tintColor = .systemPink
        button.backgroundColor = .systemBackground
        button.layer.cornerRadius = 10
        return button
    }()
    
    private lazy var menuButton3: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Бургеры", for: .normal)
        button.setTitleColor(UIColor.systemPink, for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.systemPink.cgColor
        button.tintColor = .systemPink
        button.backgroundColor = .systemBackground
        button.layer.cornerRadius = 10
        return button
    }()
    
    private lazy var menuButton4: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Роллы", for: .normal)
        button.setTitleColor(UIColor.systemPink, for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.systemPink.cgColor
        button.tintColor = .systemPink
        button.backgroundColor = .systemBackground
        button.layer.cornerRadius = 10
        return button
    }()
    
    private lazy var menuButton5: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Суши", for: .normal)
        button.setTitleColor(UIColor.systemPink, for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.systemPink.cgColor
        
        button.backgroundColor = .systemBackground
        button.layer.cornerRadius = 10
        return button
    }()
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.backgroundColor = .systemBackground
        self.addSubview(scrollView)
        self.scrollView.addSubview(menuButton)
        self.scrollView.addSubview(menuButton1)
        self.scrollView.addSubview(menuButton2)
        self.scrollView.addSubview(menuButton3)
        self.scrollView.addSubview(menuButton4)
        self.scrollView.addSubview(menuButton5)
        
        NSLayoutConstraint.activate([
        
            self.scrollView.topAnchor.constraint(equalTo: self.topAnchor),
            self.scrollView.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.scrollView.rightAnchor.constraint(equalTo: self.rightAnchor),
            self.scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            self.menuButton.centerYAnchor.constraint(equalTo: self.scrollView.centerYAnchor),
            self.menuButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 3),
            self.menuButton.leftAnchor.constraint(equalTo: self.scrollView.leftAnchor, constant: 16),
            self.menuButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16),
            self.menuButton.heightAnchor.constraint(equalToConstant: 32),
            self.menuButton.widthAnchor.constraint(equalToConstant: 88),
            
            self.menuButton1.topAnchor.constraint(equalTo: self.topAnchor, constant: 3),
            self.menuButton1.leftAnchor.constraint(equalTo: self.menuButton.rightAnchor, constant: 8),
            self.menuButton1.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16),
            self.menuButton1.heightAnchor.constraint(equalToConstant: 32),
            self.menuButton1.widthAnchor.constraint(equalToConstant: 88),
            self.menuButton1.centerYAnchor.constraint(equalTo: self.scrollView.centerYAnchor),
            
            self.menuButton2.topAnchor.constraint(equalTo: self.topAnchor, constant: 3),
            self.menuButton2.leftAnchor.constraint(equalTo: self.menuButton1.rightAnchor, constant: 8),
            self.menuButton2.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16),
            self.menuButton2.heightAnchor.constraint(equalToConstant: 32),
            self.menuButton2.widthAnchor.constraint(equalToConstant: 88),
            self.menuButton2.centerYAnchor.constraint(equalTo: self.scrollView.centerYAnchor),
        
            
            self.menuButton3.topAnchor.constraint(equalTo: self.topAnchor, constant: 3),
            self.menuButton3.leftAnchor.constraint(equalTo: self.menuButton2.rightAnchor, constant: 8),
            self.menuButton3.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16),
            self.menuButton3.heightAnchor.constraint(equalToConstant: 32),
            self.menuButton3.widthAnchor.constraint(equalToConstant: 88),
            self.menuButton3.centerYAnchor.constraint(equalTo: self.scrollView.centerYAnchor),
        
            
            self.menuButton4.topAnchor.constraint(equalTo: self.topAnchor, constant: 3),
            self.menuButton4.leftAnchor.constraint(equalTo: self.menuButton3.rightAnchor, constant: 8),
            self.menuButton4.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16),
            self.menuButton4.heightAnchor.constraint(equalToConstant: 32),
            self.menuButton4.widthAnchor.constraint(equalToConstant: 88),
            self.menuButton4.centerYAnchor.constraint(equalTo: self.scrollView.centerYAnchor),
            
            self.menuButton5.topAnchor.constraint(equalTo: self.topAnchor, constant: 3),
            self.menuButton5.leftAnchor.constraint(equalTo: self.menuButton4.rightAnchor, constant: 8),
            self.menuButton5.rightAnchor.constraint(equalTo: self.scrollView.rightAnchor, constant: -16),
            self.menuButton5.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16),
            self.menuButton5.heightAnchor.constraint(equalToConstant: 32),
            self.menuButton5.widthAnchor.constraint(equalToConstant: 88),
            self.menuButton5.centerYAnchor.constraint(equalTo: self.scrollView.centerYAnchor),
        
        
        
        
        
        ])
    }
}
