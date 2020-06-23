//
//  GetCategoryByID.swift
//  RestaurantApp
//
//  Created by Ryan Perrigo on 6/22/20.
//  Copyright © 2020 Ryan Perrigo. All rights reserved.
//

import Foundation


struct CategoryEntity: Decodable {
	let category_id: Int
	let menu_items: [MenuItemEntity]
	let name: String
	let type: String
}
