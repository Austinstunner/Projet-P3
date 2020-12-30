//
//  Player+Fight.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 30/12/2020.
//

import Foundation

extension Player {
    
    //--- Fight menu for character selected
    func fight(target: Player) {
            let currentPlayer = selectedCharacter(target: target)
            
                print("""
                                              🚩\(currentPlayer.name)🚩
                            
                                    [1] Attack           [2] Heal
                    
                    Other keys makes you return to the character's selecting menu.

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
