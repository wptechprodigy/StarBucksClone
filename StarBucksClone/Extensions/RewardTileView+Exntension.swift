//
//  RewardTileView+Exntension.swift
//  StarBucksClone
//
//  Created by waheedCodes on 16/10/2020.
//

import UIKit

extension RewardTileView {
    func style() {
        balanceView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func layout() {
        addSubview(balanceView)
        
        NSLayoutConstraint.activate([
            balanceView.topAnchor.constraint(equalTo: topAnchor),
            balanceView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2)
        ])
    }
}
