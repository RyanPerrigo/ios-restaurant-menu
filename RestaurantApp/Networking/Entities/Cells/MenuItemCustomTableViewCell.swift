//
//  MenuItemCustomTableViewCell.swift
//  RestaurantApp
//
//  Created by Ryan Perrigo on 7/27/20.
//  Copyright © 2020 Ryan Perrigo. All rights reserved.
//

import UIKit

class MenuItemCustomTableViewCell: UITableViewCell {

	@IBOutlet weak var menuItemNameLabel: UILabel!
	
	func populateMenuItemName (with name: String) {
		menuItemNameLabel.text = name
	}

}
