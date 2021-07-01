//
//  BeginnerBallerViewController.swift
//  swoosh-App
//
//  Created by Юра Маргітич on 27.06.2021.
//

import UIKit

class SkillViewController: UIViewController {
    
    @IBOutlet weak var finishButton: CustomButtonView!
    var player: Player!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onFinishTapped(_ sender: Any) {
        performSegue(withIdentifier: "FinishSegue", sender: nil)
    }
    
    @IBAction func onBeginnerTapped(_ sender: Any) {
        selectSkillLevel(level: "beginner")
    }
    
    @IBAction func onBallerTapped(_ sender: Any) {
        selectSkillLevel(level: "baller")
    }
    
    func selectSkillLevel(level: String) {
        player.skillsLevel = level
        finishButton.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let finishViewController = segue.destination as? FinishViewController {
            finishViewController.player = player
        }
    }
    
}
