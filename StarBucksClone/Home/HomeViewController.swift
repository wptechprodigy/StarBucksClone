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
        RewardTileViewController(),
        TileViewController(title: "Breakfast made meatless", subtitle: "Try the Beyond Meat, Cheddar & Egg Breakfast Sandwich. Vegetarian and protein-packed.", imageName: "meatless"),
        TileViewController(title: "Breakfast made meatless", subtitle: "Try the Beyond Meat, Cheddar & Egg Breakfast Sandwich. Vegetarian and protein-packed.", imageName: "communities"),
        TileViewController(title: "Breakfast made meatless", subtitle: "Try the Beyond Meat, Cheddar & Egg Breakfast Sandwich. Vegetarian and protein-packed.", imageName: "bonus")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBarImage(imageName: "house.fill", title: "Home")
        setupScrollView()
        style()
        layout()
    }

}
