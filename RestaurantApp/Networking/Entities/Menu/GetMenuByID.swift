//
//  GetMenuByID.swift
//  RestaurantApp
//
//  Created by Ryan Perrigo on 6/19/20.
//  Copyright © 2020 Ryan Perrigo. All rights reserved.
//

import Foundation


struct GetMenuResponseEntity: Decodable {
	let menu: RootMenuEntity
}
struct RootMenuEntity: Decodable {
	let categories: [CategoryEntity]?
	let menu_id: Int
	let name: String
	let type: String
}


