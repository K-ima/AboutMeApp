//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Kima on 09.08.2023.
//

import UIKit

class BioViewController: UIViewController {
    
    @IBOutlet var textBiographyLabel: UILabel!
    
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
    
    var textBiography: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textBiographyLabel.text = textBiography
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
    }
}
