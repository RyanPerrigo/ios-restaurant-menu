//
//  MenuItem.swift
//  RestaurantApp
//
//  Created by Ryan Perrigo on 6/19/20.
//  Copyright © 2020 Ryan Perrigo. All rights reserved.
//

import Foundation

struct MenuItem: Decodable {
	let data: MenuDescription
}

struct MenuDescription: Decodable {
	let description: String
	let Id: Int
	let name: String
	let price: Double
	let type: String
}
