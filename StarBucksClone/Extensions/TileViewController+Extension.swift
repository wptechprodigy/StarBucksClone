//
//  TileViewController+Extension.swift
//  StarBucksClone
//
//  Created by waheedCodes on 14/10/2020.
//

import UIKit

extension TileViewController {
    func styleTileView() {
        tileView.translatesAutoresizingMaskIntoConstraints = false
    }
}

extension TileViewController {
    func layoutTileView() {
        view.addSubview(tileView)
        
        NSLayoutConstraint.activate([
            tileView.topAnchor.constraint(equalTo: view.topAnchor),
            tileView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tileView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tileView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])

    }
}
