//
//  BalanceView.swift
//  StarBucksClone
//
//  Created by waheedCodes on 16/10/2020.
//

import UIKit

class BalanceView: UIView {
    
    let pointsLabel = UILabel()
    let starView = makeSymbolImageViw(systemName: "star.fill")
    let starBalanceLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

