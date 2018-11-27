//
//  GameViewController.swift
//  Week 12 Application 1 Tables
//
//  Created by Xcode User on 2018-11-26.
//  Copyright © 2018 Sheridancollege. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet var sgDiff : UISegmentedControl!
    @IBOutlet var lbDiff : UILabel!
    @IBOutlet var lbLevel : UILabel!
    @IBOutlet var lbScore : UILabel!
    @IBOutlet var lbTime : UILabel!
    
    
    func updateDifficulty()
    {
        let diff = sgDiff.selectedSegmentIndex
        
        if diff == 0
        {
            lbDiff.text = "Difficulty : Easy"
        }
        if diff == 1
        {
            lbDiff.text = "Difficulty : Medium"
        }
        if diff == 2
        {
            lbDiff.text = "Difficulty : Hard"
        }
    }
    
    @IBAction func segmentDidChange(sender: UISegmentedControl)
    {
        updateDifficulty()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbLevel.text = "Level:5"
        lbScore.text = "Score: 12345"
        lbTime.text = "Time left: 54"
        updateDifficulty()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
