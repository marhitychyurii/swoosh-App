//
//  FinishViewController.swift
//  swoosh-App
//
//  Created by Юра Маргітич on 27.06.2021.
//

import UIKit

class FinishViewController: UIViewController {
    
    @IBOutlet weak var userLeagueLabel: UILabel!
    @IBOutlet weak var userSkillLabel: UILabel!
    
    var player: Player!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        userLeagueLabel.text = player.desiredLeague.capitalized
        userSkillLabel.text = player.skillsLevel.capitalized
    }
    
}
