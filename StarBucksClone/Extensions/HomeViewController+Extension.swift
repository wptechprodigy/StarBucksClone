//
//  HomeViewController+Extension.swift
//  StarBucksClone
//
//  Created by waheedCodes on 12/10/2020.
//

import UIKit

extension HomeViewController {
    func style() {
        headerView.translatesAutoresizingMaskIntoConstraints = false
    }
}

extension HomeViewController {
    func layout() {
        view.addSubview(headerView)
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}
