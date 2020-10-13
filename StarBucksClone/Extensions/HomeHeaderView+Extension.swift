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

        makeInboxButton()
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
            bottomAnchor.constraint(equalToSystemSpacingBelow: inboxButton.bottomAnchor, multiplier: 1),
            inboxButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.25)
        ])
    }
}

extension HomeHeaderView {
    func makeInboxButton() {
        inboxButton.translatesAutoresizingMaskIntoConstraints = false
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: "envelope", withConfiguration: configuration)
        
        inboxButton.setImage(image, for: .normal)
        inboxButton.imageView?.tintColor = .secondaryLabel
        inboxButton.imageView?.contentMode = .scaleAspectFit
        
        inboxButton.setTitle("Inbox", for: .normal)
        inboxButton.setTitleColor(.secondaryLabel, for: .normal)
        
        inboxButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 16)
        inboxButton.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}
