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
	
	var dataSource: [String] = []
	
	var displayDataVCMenuEntity: GetMenuResponseEntity?
	var globalCell: UICollectionViewCell?
	var i : Int?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Register cell classes
		//		self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: K.reuseCell)
		
		// Do any additional setup after
		//loading the view.
		print("DISPLAY DATA COLLECTION")
		print(displayDataVCMenuEntity!)
	}
	
	// MARK: UICollectionViewDataSource
	
	override func numberOfSections(in collectionView: UICollectionView) -> Int {
		
		guard let intReturn = displayDataVCMenuEntity?.menu.categories?.count else {return 1}
		return intReturn
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
	
	
	//	func setCustomCellName (at indexPath: IndexPath) {
	//		let cell = CustomCollectionViewCell()
	//
	//		if {
	//			categoryLabelText.text = categoryName
	//		} else {
	//			let debugString = "Cannot Display Category Name"
	//			cell.populateCategoryName(named: debugString)
	//		}
	//
	//
	//
	//	}
	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		
		
		var cell = UICollectionViewCell()
		//		setCustomCellName(at: indexPath)
		if let safeCategoriesEntity = displayDataVCMenuEntity?.menu.categories {
//			let individualCategory = safeCategoriesEntity[indexPath.row]
			let newArray = safeCategoriesEntity.map { $0.name }
			
		dataSource = newArray
			
		}
		if let customCell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryItemCell", for: indexPath) as? CustomCollectionViewCell {
			customCell.populateCategoryName(named: dataSource[indexPath.row])
			
			cell = customCell
		}
			
		return cell
		
		// Configure the cell
		
	}
	
}
