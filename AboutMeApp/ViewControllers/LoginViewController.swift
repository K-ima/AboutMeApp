//
//  LoginViewController.swift
//  AboutMeApp
//
//  Created by Kima on 05.08.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    //MARK: - Setting Outlets
    @IBOutlet var textFieldName: UITextField!
    @IBOutlet var textFieldPassword: UITextField!
    
    private let nameUser = "Alex"
    private let passwordUser = "11"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldName.text = nameUser
        textFieldPassword.text = passwordUser
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //MARK: Setting Greeting Label
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let greetingVC = segue.destination as? GreetingViewController
        greetingVC?.greetingUser = "Welcome, \(nameUser)!"
    }

    //MARK: - Setting Alerts
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    @IBAction func forgotLogInData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(nameUser) 🫡")
        : showAlert(title: "Oops!", message: "Your password is \(passwordUser) 🫡")
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard textFieldName.text == nameUser, textFieldPassword.text == passwordUser else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password"
            )
            textFieldPassword.text = ""
            return false
        }
        return true
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        textFieldName.text = ""
        textFieldPassword.text = ""
    }
}

