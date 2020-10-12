//
//  Factories.swift
//  StarBucksClone
//
//  Created by waheedCodes on 12/10/2020.
//

import UIKit

func makeNavigationController(rootViewController: UIViewController) -> UINavigationController {
    let navigationController = UINavigationController(rootViewController: rootViewController)
    navigationController.navigationBar.prefersLargeTitles = true
    
    let attributes: [NSAttributedString.Key: Any] = [
        .foregroundColor: UIColor.label,
        .font: UIFont.preferredFont(forTextStyle: .title1).bold()
    ]
    
    navigationController.navigationBar.largeTitleTextAttributes = attributes
    
    return navigationController
}
