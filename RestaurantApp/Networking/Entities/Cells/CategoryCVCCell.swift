//
//  CategoryCVCCell.swift
//  RestaurantApp
//
//  Created by Ryan Perrigo on 7/29/20.
//  Copyright © 2020 Ryan Perrigo. All rights reserved.
//

import UIKit

class CategoryCVCCell: UICollectionViewCell {
	@IBOutlet weak var CategoryNameLabel: UILabel!
	
	func setName (with name: RootMenuEntity, indexPath: IndexPath) {
		let cellName = name.categories?[indexPath.row].name
		CategoryNameLabel.text = cellName
	}
}
