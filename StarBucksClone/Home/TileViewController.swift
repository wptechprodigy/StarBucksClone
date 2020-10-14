//
//  TileViewController.swift
//  StarBucksClone
//
//  Created by waheedCodes on 14/10/2020.
//

import UIKit

class TileViewController: UIViewController {
    let tileView = TileView()
    
    init(title: String, subtitle: String, imageName: String) {
        super.init(nibName: nil, bundle: nil)
        
        tileView.titleLabel.text = title
        tileView.subtitleLabel.text = subtitle
        tileView.imageView.image = UIImage(named: imageName)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleTileViewController()
        layoutTileViewController()
    }
}
