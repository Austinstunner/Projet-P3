//
//  Player+Fight.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 30/12/2020.
//

import Foundation

extension Player {
    
    //-- Function fight of the game, with multiple choices
    
    func fight(target: Player) {
        
        let currentPlayer = selectedCharacter(target: target)
        
        print("""
                                            🚩\(currentPlayer.name)🚩

                    life : \(currentPlayer.life)
                    Weapon : \(currentPlayer.weapon.name)


                                             
                            [1] Attack                           [2] Heal


                    
                            



                            Tip another Keys to return to character's menu

                    """)
        
        if let options = readLine() {
            switch options {
            case "1":
                
                let currentTarget = selectedTarget(target: target)
                currentPlayer.attack(target: currentTarget, weapon: currentPlayer.weapon)
            case "2":
                
                let currentTarget = selectedTarget(target: self)
                currentPlayer.healing(partner: currentPlayer, target: currentTarget, weapon: currentPlayer.weapon)
            default:
                print("""
                        I don't understand, repeat please ?
                        """)
                fight(target: target)
            }
        }
        else {
            let currentTarget = selectedTarget(target: target)
            currentPlayer.attack(target: currentTarget, weapon: currentPlayer.weapon)
        }
    }
}
