//
//  AdventureController.swift
//  MyAdventure
//
//  Created by Scarlett  on 2/7/23.
//

import Foundation

struct AdventureController {
    
    let scenarios = [
            Adventure(
                title: "You are an astronaut. You wake up and you see suddenly yourself in the middle of space. You see a UFO suddenly appear above you. As shook as you are, what do you do?",
                choice1: "Try to get the UFO's attention",
                choice2: "Act calm and pretend you do not see the UFO",
                choice1Story: 2,
                choice2Story: 1
            ),
            Adventure(
                title: "You hear strange noise coming from the unkown spacecraft. They are getting closer and closer to you. You can feel a strong force that is slowly pulling you in.",
                choice1: "Try to get closer to see what that unknown spacecraft is.",
                choice2: "Try to get signal to communicate with your colleagues while floating away.",
                choice1Story: 2,
                choice2Story: 3
            ),
            Adventure(
                title: "You get sucked into the aircraft. You're surrounded by a crowd of aliens. They are tying you down with unknown weapons and objects.",
                choice1: "Stay calm, try to convince them that you are safe.",
                choice2: "Try to attack.",
                choice1Story: 4,
                choice2Story: 5
            ),
            Adventure(
                title: "You cannot get any signal. The UFO sucked you into their territory. You lost consciousness and woke up, dazed. You freak out.",
                choice1: "Act harmless. Present to the aliens photos you brought of planet Earth to educate them.",
                choice2: "Try to make a run for it.",
                choice1Story: 4,
                choice2Story: 5
            ),
            Adventure(
                title: "The aliens were very interested in you and your body language. Though they do not understand you, they are trying to have a friendly conversation with you to learn more about what you want to tell them.",
                choice1: "Congrats. You won the game.",
                choice2: "Adventure concluded.",
                choice1Story: 0,
                choice2Story: 0
            ),
            Adventure(
                title: "The aliens felt threatened and used an unknown magical object that ended your life with a force.",
                choice1: "You lost your life.",
                choice2: "The end",
                choice1Story: 0,
                choice2Story: 0
            )
        ]
  
    
    var scenarioIndex = 0
        func getTitle() -> String{
            return scenarios[scenarioIndex].title
        }

        func getChoice1() -> String{
            return scenarios[scenarioIndex].choice1
        }

        func getChoice2() -> String{
            return scenarios[scenarioIndex].choice2
        }

        mutating func getNextStory(_ playerChoice: String) {
            if playerChoice == scenarios[scenarioIndex].choice1 {
                scenarioIndex = scenarios[scenarioIndex].choice1Story
            } else if playerChoice == scenarios[scenarioIndex].choice2 {
                scenarioIndex = scenarios[scenarioIndex].choice2Story
            }
    }
}
