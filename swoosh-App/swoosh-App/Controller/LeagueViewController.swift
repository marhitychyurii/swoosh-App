//
//  DesiredLeagueViewController.swift
//  swoosh-App
//
//  Created by Юра Маргітич on 27.06.2021.
//

import UIKit

class LeagueViewController: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var nextButton: CustomButtonView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()
    }
    
    @IBAction func unwindFromBeginnerBallerVC(unwindSegue: UIStoryboardSegue) {
        
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillSegue", sender: nil)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(league: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(league: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(league: "coed")
    }
    
    func selectLeague(league: String) {
        player.desiredLeague = league
        nextButton.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillViewController = segue.destination as? SkillViewController {
            skillViewController.player = player
        }
    }
    
}
