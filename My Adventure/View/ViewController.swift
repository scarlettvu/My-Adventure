//
//  ViewController.swift
//  My Adventure
//
//  Created by Scarlett  on 2/8/23.
//

import UIKit

struct Scenario {
    

    class ViewController: UIViewController {
        
        @IBOutlet weak var background: UIImageView!
        @IBOutlet weak var adventureQuestion: UILabel!
        @IBOutlet weak var choiceOne: UIButton!
        @IBOutlet weak var choiceTwo: UIButton!
        
        var adventureController = AdventureController()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            updateUI()
        }
        
        @IBAction func choiceSubmission(_ sender: UIButton) {
            adventureController.getNextStory(sender.currentTitle!)
            updateUI()
        }
        
        
        func updateUI() {
            adventureQuestion.text = adventureController.getTitle()
            choiceOne.setTitle(adventureController.getChoice1(), for: UIControl.State.normal)
            choiceTwo.setTitle(adventureController.getChoice2(), for: UIControl.State.normal)
            
        }
    }
}
    


