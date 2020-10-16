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
        
        makeRewardsOptionButton()
        
        rewardsGraphView.translatesAutoresizingMaskIntoConstraints = false
        starRewardsView.translatesAutoresizingMaskIntoConstraints = false
        
        rewardsDetailsButton.translatesAutoresizingMaskIntoConstraints = false
        rewardsDetailsButton.titleLabel?.text = "Details"
        rewardsDetailsButton.backgroundColor = .systemBlue
    }
    
    func makeRewardsOptionButton() {
        rewardsOptionsButton.translatesAutoresizingMaskIntoConstraints = false
        
        let configuration = UIImage.SymbolConfiguration(scale: .small)
        let image = UIImage(systemName: "chevron.down", withConfiguration: configuration)
        
        rewardsOptionsButton.setImage(image, for: .normal)
        rewardsOptionsButton.imageView?.tintColor = .label
        rewardsOptionsButton.imageView?.contentMode = .scaleAspectFit
        
        rewardsOptionsButton.setTitle("Rewards options", for: .normal)
        rewardsOptionsButton.setTitleColor(.label, for: .normal)
        rewardsOptionsButton.titleLabel?.font = UIFont.preferredFont(forTextStyle: .footnote)
        
        rewardsOptionsButton.semanticContentAttribute = .forceRightToLeft
        rewardsOptionsButton.imageEdgeInsets = UIEdgeInsets(top: 2, left: 20, bottom: 0, right: 0)
        rewardsOptionsButton.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 20)
    }
}

extension RewardTileView {
    func layout() {
        addSubview(balanceView)
        addSubview(rewardsOptionsButton)
        addSubview(rewardsGraphView)
        addSubview(starRewardsView)
        addSubview(rewardsDetailsButton)
        
        NSLayoutConstraint.activate([
            balanceView.topAnchor.constraint(equalTo: topAnchor),
            balanceView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
            
            rewardsOptionsButton.centerYAnchor.constraint(equalTo: balanceView.pointsLabel.centerYAnchor),
            trailingAnchor.constraint(equalToSystemSpacingAfter: rewardsOptionsButton.trailingAnchor, multiplier: 3),
            
            rewardsGraphView.topAnchor.constraint(equalToSystemSpacingBelow: balanceView.bottomAnchor, multiplier: 1),
            rewardsGraphView.centerXAnchor.constraint(equalTo: centerXAnchor),
            rewardsGraphView.widthAnchor.constraint(equalToConstant: frame.width),
            
            starRewardsView.topAnchor.constraint(equalToSystemSpacingBelow: rewardsGraphView.bottomAnchor, multiplier: 2),
            starRewardsView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: starRewardsView.trailingAnchor, multiplier: 2),
            
            rewardsDetailsButton.topAnchor.constraint(equalToSystemSpacingBelow: starRewardsView.bottomAnchor, multiplier: 2),
            rewardsDetailsButton.leadingAnchor.constraint(equalTo: balanceView.leadingAnchor),
            bottomAnchor.constraint(equalToSystemSpacingBelow: rewardsDetailsButton.bottomAnchor, multiplier: 3)
        ])
    }
}
