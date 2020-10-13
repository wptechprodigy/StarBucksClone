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
        
        // Grab the top constraint of the greeting label
        headerViewTopConstraint = headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        
        guard let headerViewTopConstraint = headerViewTopConstraint else {
            return
        }
        
        NSLayoutConstraint.activate([
            headerViewTopConstraint,
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}
