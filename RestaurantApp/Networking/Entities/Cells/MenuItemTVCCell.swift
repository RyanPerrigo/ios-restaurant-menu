//
//  MenuItemTVCCell.swift
//  RestaurantApp
//
//  Created by Ryan Perrigo on 7/29/20.
//  Copyright © 2020 Ryan Perrigo. All rights reserved.
//

import UIKit

class MenuItemTVCCell: UITableViewCell {

	@IBOutlet weak var menuItemCellName: UILabel!
//	override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
        // Configure the view for the selected state
	func setName (with menuItemEntity: MenuItemDataEntity) {
//		let indexPath = GlobalIndexPath.globalIndexPath
		
		let cellName = menuItemEntity.name
		
		menuItemCellName.text = cellName
	}
}
