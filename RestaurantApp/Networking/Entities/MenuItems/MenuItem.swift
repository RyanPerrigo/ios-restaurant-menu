//
//  MenuItem.swift
//  RestaurantApp
//
//  Created by Ryan Perrigo on 6/19/20.
//  Copyright © 2020 Ryan Perrigo. All rights reserved.
//

import Foundation


struct MenuItemEntity: Codable {
	let data: MenuItemDataEntity
}

struct MenuItemDataEntity: Codable {
	let description: String
	let id: Int
	let name: String
	let price: Int
	let type: String
}

//CRUD
// Create - POST
// Read - GET
// Update - PUT
// Delete - DELETE
