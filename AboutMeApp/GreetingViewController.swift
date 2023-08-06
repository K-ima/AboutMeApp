//
//  GreetingViewController.swift
//  AboutMeApp
//
//  Created by Kima on 06.08.2023.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet var greetingUserLabel: UILabel!
    @IBOutlet var buttonLogIn: UIButton!
    
    var greetingUser: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        greetingUserLabel.text = greetingUser
    }
}
