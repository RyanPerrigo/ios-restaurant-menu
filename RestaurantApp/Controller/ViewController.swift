//
//  ViewController.swift
//  RestaurantApp
//
//  Created by Ryan Perrigo on 6/14/20.
//  Copyright © 2020 Ryan Perrigo. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
	private var url = "https://www.bowntie.app/api/v1/session"

	@IBOutlet weak var welcomeLabel: UILabel!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		welcomeLabel.text = K.welcomeString
		
	}

	@IBAction func startWithDrinkButton(_ sender: UIButton) {
		performSegue(withIdentifier: "doSomthing", sender: self)
		
	}
	
	@IBAction func jumpToFood(_ sender: UIButton) {
		
	}
	@IBAction func takeOut(_ sender: UIButton) {
		
		
			let request = AF.request(url)
			request.responseJSON { (data) in
			  print(data)
			}
		  }
		}

		
		
		
		
		
//		let parameters: [String: Any] = [
//			"user": ["email": "a@b.com", "password" : "password"],
//
//		]
//
//		AF.request(url, method: .get, parameters: parameters).responseJSON { response in
//			let data = response.data as String(describing:data!)
//
			
			
		
//		Alamofire.request(url).responseObject { (response: DataResponse<[Car]>) in
//			print(response.request)  // original URL request
//			print(response.response) // URL response
//			print(response.data)     // server data
//			let cars = response.result.value  // cars array
//		}

