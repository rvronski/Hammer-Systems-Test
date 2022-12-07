//
//  ViewController.swift
//  Hammer Systems TestApp
//
//  Created by ROMAN VRONSKY on 18.10.2022.
//

import UIKit

class MenuViewController: UIViewController {
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 50
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "DefaultCell")
        tableView.register(ScrollTableViewCell.self, forCellReuseIdentifier: "ScrollCell")
        tableView.register(ScrollHeaderTableView.self, forHeaderFooterViewReuseIdentifier: "HeaderView")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 300
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
    }
    private func setupView(){
        self.view.backgroundColor = .opaqueSeparator
        self.view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
        
            self.tableView.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            self.tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            
        
        
        ])
    }

}
extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 1 {
           guard let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "HeaderView") as? ScrollHeaderTableView else {return nil}
            return headerView
        }
        return nil
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ScrollCell", for: indexPath) as! ScrollTableViewCell
            return cell
        } else {
              let cell = tableView.dequeueReusableCell(withIdentifier: "DefaultCell", for: indexPath)
                return cell
            }
            
        
        }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
     
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return 20
        }
    }
}

