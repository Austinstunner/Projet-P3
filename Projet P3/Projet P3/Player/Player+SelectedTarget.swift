//
//  Player+SelectedTarget.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 30/12/2020.
//

import Foundation

extension Player {
    //-- Select a target of other player to fight
    func selectedTarget(target: Player) -> Character {
        print("")
        print("""
            Select your opponent
            
            """)
        
        for (index, character) in target.characters.enumerated() {
            if character.isDead() {
                print("\(character.name) can't be a target, he is dead !")
            } else {
                print("➡️ \(index) \(character.name) has \(character.life) PV." )
            }
        }
        
        if let value = readLine(), let choice = Int(value), choice <= target.characters.count - 1 {
            let selectATarget = target.characters[choice]
            print("▶️ \(selectATarget.name) was selected !")
            print("")
            if selectATarget.isDead() {
                print("Hum ! Sorry but he's already dead, please choose another one !")
                return selectedTarget(target: target)
            }
            return selectATarget
        } else {
            print("You must choose ! ")
            return selectedTarget(target: target)
        }
    }
}
