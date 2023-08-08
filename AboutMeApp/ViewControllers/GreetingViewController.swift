//
//  GreetingViewController.swift
//  AboutMeApp
//
//  Created by Kima on 06.08.2023.
//

import UIKit

final class GreetingViewController: UIViewController {

    @IBOutlet var greetingUserLabel: UILabel!
    
    private let primaryColor = UIColor(
        red: 200/255,
        green: 150/255,
        blue: 170/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 120/255,
        green: 140/255,
        blue: 200/255,
        alpha: 1
    )
    
    var greetingUser: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        greetingUserLabel.text = greetingUser
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
    }
}

// MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
