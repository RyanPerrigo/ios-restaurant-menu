//
//  LoginViewController.swift
//  RestaurantApp
//
//  Created by Ryan Perrigo on 6/16/20.
//  Copyright © 2020 Ryan Perrigo. All rights reserved.
//

import UIKit
import Alamofire

class LoginViewController: UIViewController {
	
	
	
	
	//	let endPoints = ["api/session"]
	//	struct login: Codable {
	//		let user = [
	//			"email": "Ryan.Perrigo@gmail.com",
	//			"password" : "password"
	//		]
	//	}
	//
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Do any additional setup after loading the view.
	}
	
	@IBOutlet weak var emailTextField: UITextField!
	
	@IBOutlet weak var passwordTextField: UITextField!
	
	
	@IBAction func loginButton(_ sender: UIButton) {
		//		typealias completionHandler = ([[ String: Any]]?, Error?)
		
		
		
		let postLoginUserEntity = PostLoginUserEntity(
			user: PostLoginParams(
				email: emailTextField.text!,
				password: passwordTextField.text!
			)
		)
		
		
		// login request
		let loginRequest = AF.request(
			ApiRoute.login.path,
			method: .post,
			parameters: postLoginUserEntity, // or `userDictionary` because both conform to `Encodable`
			encoder: JSONParameterEncoder.default)
		
		//show spinner here
		showSpinner(onView: self.view)
		loginRequest.responseDecodable(of: PostLoginResponse.self) { response in
			
			//hide spinner here
			self.removeSpinner()
			switch response.result {
			case let .success(result):
				debugPrint(result.data.access_token)
				
				self.performSegue(withIdentifier: "goToGetRequests", sender: self)
				
				break
				
			case let .failure(error):
				debugPrint("please try again \(error.localizedDescription)")
				break
				
			}
			
		}
	}
}

var vSpinner : UIView?

extension UIViewController {
	func showSpinner(onView : UIView) {
		let spinnerView = UIView.init(frame: onView.bounds)
		spinnerView.backgroundColor = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
		let ai = UIActivityIndicatorView.init(style: .whiteLarge)
		ai.startAnimating()
		ai.center = spinnerView.center
		
		DispatchQueue.main.async {
			spinnerView.addSubview(ai)
			onView.addSubview(spinnerView)
		}
		
		vSpinner = spinnerView
	}
	
	func removeSpinner() {
		DispatchQueue.main.async {
			vSpinner?.removeFromSuperview()
			vSpinner = nil
		}
	}
}
