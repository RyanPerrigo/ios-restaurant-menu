//
//  PostLoginResponse.swift
//  RestaurantApp
//
//  Created by Ryan Perrigo on 6/16/20.
//  Copyright © 2020 Ryan Perrigo. All rights reserved.
//

import Foundation

struct PostLoginResponse: Decodable {
	let data: PostLoginResponseData
}

struct PostLoginResponseData: Decodable {
	let access_token: String
	let renewal_token: String
}
