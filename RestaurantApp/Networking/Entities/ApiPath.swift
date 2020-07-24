//
//  ApiPath.swift
//  RestaurantApp
//
//  Created by Ryan Perrigo on 6/17/20.
//  Copyright © 2020 Ryan Perrigo. All rights reserved.
//

import Foundation

private let menuID = 0

enum ApiRoute { case
	login,
	getItems,
	getMenuById,
	getAllMenus,
	getRestaurants
	
}

extension ApiRoute {
	var url: String {
		return K.BASE_URL
	}
	var path: String {
		switch self {
		case .login:
			return url + "api/session"
		case .getItems:
			return url + "api/menu_items/2"
		case .getAllMenus:
			return url + "api/menus/"
		case .getMenuById:
			return url + "api/menus/3"
		case .getRestaurants:
			return url + "api/restaurants"
		}
	}
	
}
