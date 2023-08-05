//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Kima on 05.08.2023.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Setting Outlets
    @IBOutlet var textFieldName: UITextField!
    @IBOutlet var textFieldPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    //MARK: - Setting Alerts
    @IBAction func showAlertUserName() {
        let alert = UIAlertController(
            title: "Oops!",
            message: "Your name is User",
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    @IBAction func showAlertPassword() {
        let alert = UIAlertController(
            title: "Oops!",
            message: "Your password is 111",
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }

    @IBAction func logInButton() {
        if textFieldName.text != "User" || textFieldPassword.text != "111" {
            showAlertLogIn()
        }
    }
    
    private func showAlertLogIn() {
        let alert = UIAlertController(
            title: "Invalid login or password",
            message: "Please, enter correct login or password",
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

