//
//  ViewController.swift
//  StarBucksClone
//
//  Created by waheedCodes on 11/10/2020.
//

import UIKit

class HomeViewController: StarBucksViewController {
    static let cellIdentifier = "cellId"
    
    let headerView = HomeHeaderView()
    var headerViewTopConstraint: NSLayoutConstraint?
    var tableView = UITableView()
    
    var tiles = [
        "Star balance",
        "Bonus Stars",
        "Try These",
        "Welcome Back",
        "Welcome Back"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBarImage(imageName: "house.fill", title: "Home")
        setupTableView()
        style()
        layout()
    }

}
