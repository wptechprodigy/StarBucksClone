//
//  HomeHeaderView.swift
//  StarBucksClone
//
//  Created by waheedCodes on 13/10/2020.
//

import UIKit

class HomeHeaderView: UIView {
    
    var greetingLabel = UILabel()
    var inboxButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

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
    
    func layout() {
        
    }
}
