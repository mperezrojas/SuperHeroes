//
//  SuperHeroDetailViewController.swift
//  MarvelSuperHeroes
//
//  Created by Miguel on 25/6/17.
//  Copyright © 2017 Miguel Pérez. All rights reserved.
//

import UIKit

class SuperHeroDetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var realNameLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var powerLabel: UILabel!
    @IBOutlet weak var abilitiesLabel: UILabel!
    @IBOutlet weak var groupsLabel: UILabel!
    var superHero: SuperHero!
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.downloadImage(fromURL: superHero.photo)
        titleLabel.text = superHero.name
        realNameLabel.text = superHero.realName
        heightLabel.text = superHero.height
        powerLabel.text = superHero.power
        abilitiesLabel.text = superHero.abilities
        groupsLabel.text = superHero.groups
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    // MARK: UIActions
    
    @IBAction func closeButtonTouchUpInside(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
}
