//
//  League.swift
//  swoosh
//
//  Created by rihab aldabbagh on 11/13/17.
//  Copyright © 2017 rihab aldabbagh. All rights reserved.
//

import UIKit

class League: UIViewController {
    
    
    var player: Player!
    
    @IBOutlet weak var nextbBTN: BorderButton!
    
    
    @IBAction func next(_ sender: Any) {
        performSegue(withIdentifier: "toskill", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()

    }

    @IBAction func mensBTN(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    
    @IBAction func womensBTN(_ sender: Any) {
         selectLeague(leagueType: "womens")
    }
    
    
    @IBAction func coedBTN(_ sender: Any) {
         selectLeague(leagueType: "coed")
    }

    
    func selectLeague(leagueType:String){
        player.desiredLeague = leagueType
        nextbBTN.isEnabled = true
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillvc = segue.destination as? skill {
            skillvc.player = player 
        }
    }

}
