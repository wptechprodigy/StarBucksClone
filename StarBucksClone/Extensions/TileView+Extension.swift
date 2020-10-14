//
//  TileView+Extension.swift
//  StarBucksClone
//
//  Created by waheedCodes on 13/10/2020.
//

import UIKit

extension TileView {
    func layout() {
        view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            view.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
}
