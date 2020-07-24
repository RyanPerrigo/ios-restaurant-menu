//
//  GetMenuItemById.swift
//  RestaurantApp
//
//  Created by Ryan Perrigo on 7/20/20.
//  Copyright © 2020 Ryan Perrigo. All rights reserved.
//

import Foundation

struct MenuItemRootResponseEntity: Decodable {
	let data: DataEntity
}
struct DataEntity: Decodable {
	let description: String
	let id: Int
	let name: String
	let price: Int
	let type: String
}
