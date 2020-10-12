//
//  OrderViewController.swift
//  StarBucksClone
//
//  Created by waheedCodes on 12/10/2020.
//

import UIKit

class OrderViewController: StarBucksViewController {
    override func viewDidLoad() {
        view.backgroundColor = .systemIndigo
        title = "Order"
    }
    
    override func commonInit() {
        setTabBarImage(imageName: "arrow.up.bin.fill", title: "Order")
    }
}
