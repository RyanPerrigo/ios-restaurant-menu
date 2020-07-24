//
//  Creds.swift
//  RestaurantApp
//
//  Created by Ryan Perrigo on 6/23/20.
//  Copyright © 2020 Ryan Perrigo. All rights reserved.
//

import Foundation


struct Credentials {
    var username: String
    var password: String
}

enum KeychainError: Error {
    case noPassword
    case unexpectedPasswordData
    case unhandledError(status: OSStatus)
}


