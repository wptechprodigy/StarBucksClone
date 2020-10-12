//
//  GiftViewController.swift
//  StarBucksClone
//
//  Created by waheedCodes on 12/10/2020.
//

import UIKit

class GiftViewController: StarBucksViewController {
    override func viewDidLoad() {
        view.backgroundColor = .systemIndigo
        title = "Gift"
    }
    
    override func commonInit() {
        setTabBarImage(imageName: "gift.fill", title: "Gift")
    }
}
