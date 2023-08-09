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
    private let users = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldName.text = nameUser
        textFieldPassword.text = passwordUser
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //MARK: Setting Greeting and Info Labels
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as? UITabBarController
        tabBarController?.viewControllers?.forEach { viewController in
            if let homeVC = viewController as? GreetingViewController {
                homeVC.greetingUser = "My name is \(users.person.fullName)."
                homeVC.welcomeUser = "Welcome, \(nameUser)!"
            } else if let navigationVC = viewController as? UINavigationController {
                let infoVC = navigationVC.topViewController as? InfoViewController
                infoVC?.title = users.person.fullName
                infoVC?.nameUser = "Имя: \(users.person.name)"
                infoVC?.familyUser = "Фамилия: \(users.person.family)"
                infoVC?.workUser = "Компания: \(users.person.work)"
                infoVC?.positionUser = "Должность: \(users.person.position)"
                infoVC?.biographyUser = users.person.biography
                infoVC?.titleBioVC = "\(users.person.fullName) Bio"
            }
        }
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

