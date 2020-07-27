//
//  MenuItemTableViewController.swift
//  RestaurantApp
//
//  Created by Ryan Perrigo on 7/26/20.
//  Copyright © 2020 Ryan Perrigo. All rights reserved.
//

import UIKit

class MenuItemTableViewController: UITableViewController {
	
	var globalMenuItemNameArray: [String] = []
	var responseEntity: GetMenuResponseEntity?
	var passedIndexRowNumber: Int?
	var customCellName: String?
	override func viewDidLoad() {
		super.viewDidLoad()
		
		
	}
	
	// MARK: - Table view data source
	
	override func numberOfSections(in tableView: UITableView) -> Int {
		// #warning Incomplete implementation, return the number of sections
		return 1
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		// #warning Incomplete implementation, return the number of rows
		return globalMenuItemNameArray.count
	}
	
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		var cell = UITableViewCell()
		
		//		let menuItemPrice = responseEntity?.menu.categories?[indexPath.row].menu_items?[indexPath.row].price
		if let safeIndexNumber = passedIndexRowNumber {
			
			if let safeFoodCategoryItem = responseEntity?.menu.categories?[safeIndexNumber].menu_items {
				
				let newArray = safeFoodCategoryItem.map { $0.name }
				globalMenuItemNameArray = newArray
			}
			
			
			if let customMenuItemCell = tableView.dequeueReusableCell(withIdentifier: K.menuItemTableViewCell, for: indexPath) as? MenuItemCustomTableViewCell {
				
				customMenuItemCell.populateMenuItemName(with: globalMenuItemNameArray[indexPath.row])
				
				cell = customMenuItemCell
			}
			
			
			
			return cell
		}
		
		return cell
}
}
