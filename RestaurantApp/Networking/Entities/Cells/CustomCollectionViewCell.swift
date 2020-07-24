//
//  CollectionViewCell.swift
//  RestaurantApp
//
//  Created by Ryan Perrigo on 7/22/20.
//  Copyright © 2020 Ryan Perrigo. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
	
	@IBOutlet weak var categoryNameLabel: UILabel!
	
	func populateCategoryName (named category: String?) {
		
		categoryNameLabel.text = category
//		if category != nil {
//			categoryNameLabel.text = category
//		} else {
//			categoryNameLabel.text! = "Cannot display Category Name"
//		}
//
//
//	}
}
}
