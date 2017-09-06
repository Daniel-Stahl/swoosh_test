//
//  LeagueVCViewController.swift
//  swoosh
//
//  Created by Daniel Stahl on 9/5/17.
//  Copyright © 2017 Daniel Stahl. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    @IBOutlet weak var nextBtn: buttonBorder!
    
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
        
    }
    
    @IBAction func pressedNextBtn(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func pressedMen(_ sender: Any) {
        selectLeague(leagueType: "Men")
    }
    
    @IBAction func pressedWomen(_ sender: Any) {
        selectLeague(leagueType: "Women")
    }
    
    @IBAction func pressedCoed(_ sender: Any) {
        selectLeague(leagueType: "Coed")
    }
    
    func selectLeague(leagueType: String) {
        player.leagueDesired = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
