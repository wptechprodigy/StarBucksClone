//
//  HomeHeaderView+Extension.swift
//  StarBucksClone
//
//  Created by waheedCodes on 13/10/2020.
//

import UIKit

extension HomeHeaderView {
    func style() {
        greetingLabel.translatesAutoresizingMaskIntoConstraints = false
        greetingLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        greetingLabel.text = "Good afternoon, Waheed 🤩"
        greetingLabel.numberOfLines = 0
        greetingLabel.lineBreakMode = .byWordWrapping

        inboxButton.translatesAutoresizingMaskIntoConstraints = false
        inboxButton.setTitleColor(.label, for: .normal)
        inboxButton.setTitle("Inbox", for: .normal)
    }
}

extension HomeHeaderView {
    func layout() {
        addSubview(greetingLabel)
        addSubview(inboxButton)
        
        NSLayoutConstraint.activate([
            greetingLabel.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
            greetingLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
            trailingAnchor.constraint(equalToSystemSpacingAfter: greetingLabel.trailingAnchor, multiplier: 2),
            
            inboxButton.topAnchor.constraint(equalToSystemSpacingBelow: greetingLabel.bottomAnchor, multiplier: 2),
            inboxButton.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
            bottomAnchor.constraint(equalToSystemSpacingBelow: inboxButton.bottomAnchor, multiplier: 1)
        ])
    }
}
