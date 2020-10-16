//
//  RewardsTileViewController.swift
//  StarBucksClone
//
//  Created by waheedCodes on 16/10/2020.
//

import UIKit

class RewardTileViewController: UIViewController {
    
    let rewardsTileView = RewardTileView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupRewardsView()
    }
}

extension RewardTileViewController {
    func setupRewardsView() {
        rewardsTileView.translatesAutoresizingMaskIntoConstraints = false
        rewardsTileView.backgroundColor = .backgroundWhite
        
        view.addSubview(rewardsTileView)
        
        NSLayoutConstraint.activate([
            rewardsTileView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            rewardsTileView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            rewardsTileView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            rewardsTileView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])

    }
}
