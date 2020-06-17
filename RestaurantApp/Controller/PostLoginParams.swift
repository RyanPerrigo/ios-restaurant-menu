//
//  PostLoginParams.swift
//  RestaurantApp
//
//  Created by Ryan Perrigo on 6/16/20.
//  Copyright © 2020 Ryan Perrigo. All rights reserved.
//

import Foundation
import ObjectMapper

class PostLoginParams: Mappable {
	required init?(map: Map) {
		
	}
	
	func mapping(map: Map) {
		email <- map["email"]
		password <- map["password"]
	}
	
	var email: String?
	var password: String?
	
	
	
}
