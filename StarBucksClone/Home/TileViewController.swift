//
//  TileViewController.swift
//  StarBucksClone
//
//  Created by waheedCodes on 14/10/2020.
//

import UIKit

class TileViewController: UIViewController {
    let tileView = TileView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleTileView()
        layoutTileView()
    }
}
