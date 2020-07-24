//
//  UIViewController.swift
//  RestaurantApp
//
//  Created by Ryan Perrigo on 6/16/20.
//  Copyright © 2020 Ryan Perrigo. All rights reserved.
//

import UIKit
import Alamofire

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

	@IBAction func loginButton(_ sender: UIButton) {
		performSegue(withIdentifier: K.loginViewControllerString, sender: self)
	}
	
	@IBAction func registerButton(_ sender: UIButton) {
		
	}
	
}
