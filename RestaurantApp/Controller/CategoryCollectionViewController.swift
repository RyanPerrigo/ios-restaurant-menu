//
//  CategoryCollectionViewController.swift
//  RestaurantApp
//
//  Created by Ryan Perrigo on 7/23/20.
//  Copyright © 2020 Ryan Perrigo. All rights reserved.
//

import UIKit

/**
Go to menu >
Category Screen
Food
Drinks
Weeds

Menu Items for selected Category screen
Mains >
Steak | $50.00
Fish | $20.00
*/

class CategoryCollectionViewController: UICollectionViewController {
	var globalIndexPathNumber: Int?
	
	var globalCategoryNameArray: [String] = []
	var globalCellName: String = ""
	var displayDataVCMenuEntity: GetMenuResponseEntity?
	var globalCell: UICollectionViewCell?
	var i : Int?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		print("DISPLAY DATA COLLECTION")
		print(displayDataVCMenuEntity!)
		
	}
	
	// MARK: UICollectionViewDataSource
	
	override func numberOfSections(in collectionView: UICollectionView) -> Int {
		
		//		guard let intReturn = displayDataVCMenuEntity?.menu.categories?.count else {return 1}
		return 1
	}
	
	
	override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		if let topInt = displayDataVCMenuEntity {
			if let returnInt = topInt.menu.categories?.count {
				return returnInt
			}
		}
		return 1
		
	}
	
}
//MARK: - Label Text manipulation
extension CategoryCollectionViewController {
	func doSegue () {
		performSegue(withIdentifier: K.foodPressed, sender: self)
	}
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		
		if let destinationVC = segue.destination as? MenuItemTableViewController {
			destinationVC.customCellName = globalCellName
			destinationVC.passedIndexRowNumber = globalIndexPathNumber
		}
		
		}
	
	override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		let cellNumber = indexPath.row
		doSegue()
//		if cellNumber == 0 {
//			globalCellName = "Food"
//			globalIndexPathNumber = 0
//
//		}
//		if cellNumber == 1 {
//			globalCellName = "Drinks"
//			globalIndexPathNumber = 1
//
//		}
//
		
	
		
	}
	
	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		
		
		var cell = UICollectionViewCell()
		//		setCustomCellName(at: indexPath)
		
		if let safeCategoriesEntity = displayDataVCMenuEntity?.menu.categories {
			//			let individualCategory = safeCategoriesEntity[indexPath.row]
			let newArray = safeCategoriesEntity.map { $0.name }
			
			globalCategoryNameArray = newArray
			
		}
		
		if let customCell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryItemCell", for: indexPath) as? CustomCollectionViewCell {
			customCell.populateCategoryName(named: globalCategoryNameArray[indexPath.row])
			
			cell = customCell
		}
		
		return cell
		
		// Configure the cell
		
	}
	
}

