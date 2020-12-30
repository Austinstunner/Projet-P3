//
//  Player+CreateCharacter.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 30/12/2020.
//

import Foundation

extension Player {
   
    func createCharacter() {
        
        print("""
            
            [1]🗝 Keyblade Wielder [2]🧙🏻‍♂️ Royal Sorcecer [3]💂🏻 Royal Defender [4]🧟 Monster

            """)
        if let choix = readLine() {
            switch choix {
            case "1":
                characters.append(KeybladeWielder())
                print("""

                        You choose a Keyblade Wielder
                        """)
            case "2":
                characters.append(RoyalSorcerer())
                print("""

                        You choose a Royal Sorcerer
                        """)
            case "3":
                characters.append(RoyalDefender())
                print("""

                        You choose a Royal Defender
                        """)
            case "4":
                characters.append(Monster())
                print("""
                        You choose a Monster
                        """)
            default:
                createCharacter()
                
            }
        }
    }
}
