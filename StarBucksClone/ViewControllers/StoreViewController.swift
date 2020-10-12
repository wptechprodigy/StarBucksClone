//
//  StoreViewController.swift
//  StarBucksClone
//
//  Created by waheedCodes on 12/10/2020.
//

import UIKit

class StoresViewController: StarBucksViewController {
    override func viewDidLoad() {
        view.backgroundColor = .systemTeal
        title = "Stores"
    }
    
    override func commonInit() {
        setTabBarImage(imageName: "location.fill", title: "Stores")
    }
}
