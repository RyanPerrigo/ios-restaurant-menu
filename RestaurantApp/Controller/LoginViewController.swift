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
	
	let endPoints = ["api/session"]
	struct login: Codable {
		let user = [
			"email": "Ryan.Perrigo@gmail.com",
			"password" : "password"
		]
	}

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
	@IBOutlet weak var emailTextField: UITextField!
	
	@IBOutlet weak var passwordTextField: UITextField!
	
	
	@IBAction func loginButton(_ sender: UIButton) {
		typealias completionHandler = ([[ String: Any]]?, Error?)
		
		let postLoginUserEntity = PostLoginUserEntity(
			user: PostLoginParams(
				email: emailTextField.text!,
				password: passwordTextField.text!
			)
		)
		
		
		let request = AF.request(
			K.BASE_URL + "api/session",
			method: .post,
			parameters: postLoginUserEntity, // or `userDictionary` because both conform to `Encodable`
			encoder: JSONParameterEncoder.default)
		
		request.responseDecodable(of: PostLoginResponse.self) { response in
			
			switch response.result {
			case let .success(result):
				debugPrint(result.data.access_token)
				
				break
				
			case let .failure(error):
				
				break
				
			}
			
		}
	}
}
		
//		request.validate().responseJSON { response in
//			if let error = response.error {
//				completion(nil, error)
//		}
			
		
//		let login = Login(email: emailTextField.text!, password: passwordTextField.text!)
		

//		AF.request(K.BASE_URL + "api/session",
//				   method: .post,
//				   parameters: userLoginParams?.toJSON()
//				).response { response in
//			debugPrint(response)
//		}
		
//	}
	/*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

//}
