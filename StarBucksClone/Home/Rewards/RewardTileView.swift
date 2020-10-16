//
//  RewardTileView.swift
//  StarBucksClone
//
//  Created by waheedCodes on 16/10/2020.
//

import UIKit

class RewardTileView: UIView {
    
    let balanceView = BalanceView()
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 100, height: 300)
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
