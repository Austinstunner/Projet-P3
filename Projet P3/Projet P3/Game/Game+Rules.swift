//
//  Game'sRules.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 25/11/2020.
//

import Foundation

extension Game {
    
//-- function who's display rules of the game
    
    func rules() {
        
        print("""

        You enter in the world of Kingdom Hearts.

        After the speach between King Mickey and Jiminy Cricket,
        ➡️ First player has to choose the name of his team and choose fighters who composed it.
        Then, ➡️ Second Player, as to do the same.
        
        Finally after the end of introduction, the Fight begin ⚔️ !

        Turn by turn you have to select your characters and that he must do :

            ➢ Attack : choose one of opponent's character to attack.
            ➢ Heal : choose one of your character to heal.
        
        The end of the game is announced when all characters of a player is dead, a winner is designated and
        statistics of the game is displayed.
        

        
        """)
    }
}
