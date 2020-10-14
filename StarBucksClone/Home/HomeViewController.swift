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
    let scrollView = UIScrollView()
    let stackView = UIStackView()
    
    var headerViewTopConstraint: NSLayoutConstraint?
    
    var tiles = [
        TileViewController("Star balance"),
        TileViewController("Bonus Stars"),
        TileViewController("Try These"),
        TileViewController("Welcome Back"),
        TileViewController("Welcome Back")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBarImage(imageName: "house.fill", title: "Home")
        style()
        layout()
    }

}
