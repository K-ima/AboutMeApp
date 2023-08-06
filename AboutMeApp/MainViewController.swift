//
//  MainViewController.swift
//  AboutMeApp
//
//  Created by Kima on 05.08.2023.
//

import UIKit

class MainViewController: UIViewController {

    //MARK: - Setting Outlets
    @IBOutlet var textFieldName: UITextField!
    @IBOutlet var textFieldPassword: UITextField!
    
    //MARK: Setting Greeting Label
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let greetingVC = segue.destination as? GreetingViewController
        greetingVC?.greetingUser = "Welcome, " + (textFieldName.text ?? "") + "!"
    }

    //MARK: - Setting Alerts
    @IBAction func showAlertUserName() {
        let alert = UIAlertController(
            title: "Oops!",
            message: "Your name is Alex",
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    @IBAction func showAlertPassword() {
        let alert = UIAlertController(
            title: "Oops!",
            message: "Your password is 11",
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
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
    
    // MARK: - Setting button LogIn
    @IBAction func logInButton() {
        if textFieldName.text != "Alex" || textFieldPassword.text != "11" {
            showAlertLogIn()
        }
    }
    
    //MARK: - Setting button LogOut
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        textFieldName.text = ""
        textFieldPassword.text = ""
    }
}

