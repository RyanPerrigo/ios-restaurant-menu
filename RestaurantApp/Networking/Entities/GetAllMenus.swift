//
//  GetAllMenus.swift
//  RestaurantApp
//
//  Created by Ryan Perrigo on 6/19/20.
//  Copyright © 2020 Ryan Perrigo. All rights reserved.
//

import Foundation

struct GetAllMenusRootResponseEntity {
	let data: DataEntity
}

struct DataEntity: Decodable {
	let menu: [MenuEntity]
}

struct MenuEntity: Decodable {
	let categories: [Category]
	let menu_id: Int
	let name: String
	let type: String
}
