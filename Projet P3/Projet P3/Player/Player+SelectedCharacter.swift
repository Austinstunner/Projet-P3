//
//  Player+SelectedCharacter.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 30/12/2020.
//

import Foundation

extension Player {
    //-- function for select character of the team
   
    internal func selectedCharacter(target: Player) -> Character {
            print("")
            print("""
                            Select a character ❕

                    """)
            
            // Show Characters available during the game, (NB : AJOUTER PHRASE PERSONNALISE POUR ETAT DE SANTE)
            for (index, character) in characters.enumerated() {
                let currentLife = character.life
                
                if currentLife >= 100 {
                    print("[\(index)] ⚜️ \(character.name) has \(character.life) PV, He is fine.. ")
                } else if currentLife >= 75 {
                    print("[\(index)] ⚜️ \(character.name) has \(character.life) PV, He has a few scratches but is in a good shape  ")
                } else if currentLife >= 50 {
                    print("[\(index)] ⚜️ \(character.name) has \(character.life) PV, He remains standing and does not give up !  ")
                } else if currentLife >= 25 {
                    print("[\(index)] ⚜️ \(character.name) has \(character.life) PV, He staggers but can still fight !   ")
                } else if currentLife >= 0 && !character.isDead() {
                    print("[\(index)] ⚜️ \(character.name) has \(character.life) PV, He is at death's door.. ")
                } else {
                    print("❌ \(character.name) has left this world ☠️")
                }
            }
            
            if let value = readLine(), let choice = Int(value), choice <= characters.count - 1 {
                let selectACharacter = characters[choice]
                print("""

                ▶️ \(selectACharacter.name) was selected ! \n
                """)
                if selectACharacter.isDead() {
                    print("\(selectACharacter.name) is dead.. choose another one ! ")
                    return selectedCharacter(target: target)
                }
                return selectACharacter
            } else {
                return selectedCharacter(target: target)
            }
        }
}
