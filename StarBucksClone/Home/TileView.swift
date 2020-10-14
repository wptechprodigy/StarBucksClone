//
//  TileView.swift
//  StarBucksClone
//
//  Created by waheedCodes on 14/10/2020.
//

import UIKit

class TileView: UIView {
    private var shadowLayer: CAShapeLayer!
    private var cornerRadius: CGFloat = 6
    private var fillColor: UIColor = .white
    
    let imageView = UIImageView()
    let titleLabel = UILabel()
    let subtitleLabel = UILabel()
    let ctaButton = makeGreenButton(withText: "Order")
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 100, height: 300)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addShadow()
    }
    
    func addShadow() {
        shadowLayer = CAShapeLayer()
        
        shadowLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius).cgPath
        shadowLayer.fillColor = fillColor.cgColor
        
        shadowLayer.shadowColor = UIColor.black.cgColor
        shadowLayer.shadowPath = shadowLayer.path
        shadowLayer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        shadowLayer.shadowOpacity = 0.2
        shadowLayer.shadowRadius = 1
        
        layer.insertSublayer(shadowLayer, at: 0)
    }
}
