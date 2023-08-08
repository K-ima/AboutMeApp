//
//  GreetingViewController.swift
//  AboutMeApp
//
//  Created by Kima on 06.08.2023.
//

import UIKit

final class GreetingViewController: UIViewController {

    @IBOutlet var greetingUserLabel: UILabel!
    @IBOutlet var buttonLogOut: UIButton!
    
    var greetingUser: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        greetingUserLabel.text = greetingUser
    }
}
