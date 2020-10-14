//
//  TileView+Extension.swift
//  StarBucksClone
//
//  Created by waheedCodes on 14/10/2020.
//

import UIKit

extension TileView {
    func style() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "meatless")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = UIFont.preferredFont(forTextStyle: .title3).bold()
        titleLabel.textColor = .label
        
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.font = UIFont.preferredFont(forTextStyle: .footnote)
        subtitleLabel.numberOfLines = 0
        subtitleLabel.lineBreakMode = .byWordWrapping
        
        ctaButton.translatesAutoresizingMaskIntoConstraints = false
    }
}

extension TileView {
    func layout() {
        addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}


func makeGreenButton(withText text: String) -> UIButton {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle(text, for: .normal)
    button.titleLabel?.adjustsFontSizeToFitWidth = true
    button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 8, right: 16)
    button.layer.cornerRadius = 40/2
    button.backgroundColor = .darkGreen
    
    return button
}
