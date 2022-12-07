//
//  ScrollTableViewCell.swift
//  Hammer Systems TestApp
//
//  Created by ROMAN VRONSKY on 23.10.2022.
//

import UIKit

class ScrollTableViewCell: UITableViewCell {
    
    private lazy var view: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isUserInteractionEnabled = true
        view.clipsToBounds = true
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.cornerRadius = 20
        view.image = UIImage(named: "1625702581_15-phonoteka-org-p-art-pitstsa-menyu-krasivo-18" )
        return view
        
    }()
    
    private lazy var view1: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isUserInteractionEnabled = true
        view.clipsToBounds = true
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.cornerRadius = 20
        view.image = UIImage(named: "1625537050_13-kartinkin-com-p-sushi-pitstsa-fon-krasivie-foni-13")
        return view
        
    }()
    
    private lazy var view2: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isUserInteractionEnabled = true
        view.clipsToBounds = true
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.cornerRadius = 20
        view.image = UIImage(named: "CrXD7fxWgAAjvoB.jpg-large")
        return view
        
    }()
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.verticalScrollIndicatorInsets.right = 1
        return scrollView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupView()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        
        self.contentView.addSubview(scrollView)
        self.scrollView.addSubview(view)
        self.scrollView.addSubview(view1)
        self.scrollView.addSubview(view2)
        
        NSLayoutConstraint.activate([
        
            self.scrollView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            self.scrollView.leftAnchor.constraint(equalTo: self.contentView.leftAnchor),
            self.scrollView.rightAnchor.constraint(equalTo: self.contentView.rightAnchor),
            self.scrollView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            
            self.view.leftAnchor.constraint(equalTo: self.scrollView.leftAnchor, constant: 16),
            self.view.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 16),
            self.view.widthAnchor.constraint(equalTo: self.scrollView.widthAnchor, multiplier: 0.8),
            self.view.heightAnchor.constraint(equalToConstant: 112),
            self.view.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -16),
            
            self.view1.leftAnchor.constraint(equalTo: self.view.rightAnchor, constant: 16),
            self.view1.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 16),
            self.view1.widthAnchor.constraint(equalTo: self.scrollView.widthAnchor, multiplier: 0.8),
            self.view1.heightAnchor.constraint(equalToConstant: 112),
            self.view1.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -16),
            
            
            
            self.view2.leftAnchor.constraint(equalTo: self.view1.rightAnchor, constant: 16),
            self.view2.rightAnchor.constraint(equalTo: self.scrollView.rightAnchor, constant: -16),
            self.view2.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 16),
            self.view2.widthAnchor.constraint(equalTo: self.scrollView.widthAnchor, multiplier: 0.8),
            self.view2.heightAnchor.constraint(equalToConstant: 112),
            self.view2.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -16),
        
        ])
    }
    
}
