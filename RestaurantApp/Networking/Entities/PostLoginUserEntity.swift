//
//  PostLoginUserEntity.swift
//  RestaurantApp
//
//  Created by Ryan Perrigo on 6/16/20.
//  Copyright © 2020 Ryan Perrigo. All rights reserved.
//

import Foundation

struct PostLoginUserEntity: Encodable {
	let user: PostLoginParams
}

struct PostLoginParams: Encodable {
	let email: String?
	let password: String?
}


