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
        PlaceHolderViewController("Star balance"),
        PlaceHolderViewController("Bonus Stars"),
        PlaceHolderViewController("Try These"),
        PlaceHolderViewController("Welcome Back"),
        PlaceHolderViewController("Welcome Back")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBarImage(imageName: "house.fill", title: "Home")
        setupScrollView()
        style()
        layout()
    }

}
