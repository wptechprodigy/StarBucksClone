//
//  TileView.swift
//  StarBucksClone
//
//  Created by waheedCodes on 13/10/2020.
//

import UIKit

class PlaceHolderViewController: UIViewController {
    
    let label = UILabel()
    
    init(_ text: String) {
        super.init(nibName: nil, bundle: nil)
        label.text = text
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        layout()
    }
    
}
