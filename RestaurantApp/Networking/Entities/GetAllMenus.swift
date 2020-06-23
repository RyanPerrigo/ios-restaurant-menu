//
//  GetAllMenus.swift
//  RestaurantApp
//
//  Created by Ryan Perrigo on 6/19/20.
//  Copyright © 2020 Ryan Perrigo. All rights reserved.
//

import Foundation

struct data: Decodable {
	let nestedMenu: menu
}

struct menu: Decodable {
	let categories: [Category]
	let menuId: Int
	let name: String
	let type: String
}
