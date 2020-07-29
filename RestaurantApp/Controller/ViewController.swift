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
	var globalResponseData: GetMenuResponseEntity?
	
	private var url = "https://www.bowntie.app/api/v1/session"

	@IBOutlet weak var welcomeLabel: UILabel!
	
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		welcomeLabel.text = K.welcomeString
		getRequest(url: ApiRoute.getMenuById.path)
	}
	
	@IBAction func startWithDrinkButton(_ sender: UIButton) {
		performSegue(withIdentifier: "doSomthing", sender: self)
		
	}
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let destinationVC = segue.destination as? CategoryCVC {
			destinationVC.responseData = globalResponseData
		}
		
	}
//
//		}
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
	
	@IBAction func jumpToFood(_ sender: UIButton) {

		performSegue(withIdentifier: SegueStrings.categoriesVC, sender: self)
//		let alert = UIAlertController(title: "The Data You Requested", message: responseToString, preferredStyle: .alert)
//		present(alert, animated: true, completion: nil)
//		makeRequest(to: ApiRoute.getMenuById.path)


	}
//	@IBAction func takeOut(_ sender: UIButton) {
//
//
//
////			let request = AF.request(url)
////			request.responseJSON { (data) in
////			  print(data)
//			}
	func getRequest (url: String) {
		let menuRequest = AF.request(url, method: .get)
		menuRequest.responseDecodable(of: GetMenuResponseEntity.self) { (response) in
		
			
			if let error = response.error {
				print("No Response From Server\(error.localizedDescription)" )
			}
			print(response)
			if let data = response.value {
				self.globalResponseData = data
			}
	}
		
		
	func makeRequest (to url: String) {
		getRequest(url: ApiRoute.getMenuById.path)
		print("this should be returning data")
		
				
//				print(menuValue)
//				print(menuValue.menu.categories![0].menu_items![0].name)
			}
		}
//		let request = AF.request(url, method: .get)
//		request.responseDecodable(of: MenuItemRootResponseEntity.self) { (response) in
//
//
//			print(response)
//
//
//			if let error = response.error {
//				print("ERROR MOFO")
//				print(error)
//			}
//
//		  guard let menus = response.value else { return }
//			print(menus.data)
//		}

        }
		  






