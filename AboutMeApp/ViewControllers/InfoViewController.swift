//
//  InfoViewController.swift
//  AboutMeApp
//
//  Created by Kima on 08.08.2023.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var labelName: UILabel!
    @IBOutlet var labelFamily: UILabel!
    @IBOutlet var labelWork: UILabel!
    @IBOutlet var labelPosition: UILabel!
    
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
    
    var nameUser: String!
    var familyUser: String!
    var workUser: String!
    var positionUser: String!
    var biographyUser: String!
    var titleBioVC: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.text = nameUser
        labelFamily.text = familyUser
        labelWork.text = workUser
        labelPosition.text = positionUser
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bioVC = segue.destination as? BioViewController
        bioVC?.textBiography = biographyUser
        bioVC?.title = titleBioVC
    }
}

