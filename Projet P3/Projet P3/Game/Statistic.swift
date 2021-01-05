//
//  Statistic.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 26/11/2020.
//

import Foundation

//----------------------------------------------------------------------------------\\
//------------------------- STATISTIC FUNCTION OF THE GAME  -------------------------\\
//------------------------------------------------------------------------------------\\

extension Game {
    
internal func statistic() {
    print("""
    
    STATS OF THE GAME
    -----------------
            \(player1.nameOfTheTeam)
    
    \(player1.characters[0].name) :
    life remaining : \(player1.characters[0].life)
    
    \(player1.characters[1].name) :
    life remaining : \(player1.characters[1].life)
    
    \(player1.characters[2].name) :
    life remaining : \(player1.characters[2].life)
    
    
            \(player2.nameOfTheTeam)

    \(player2.characters[0].name) :
    life remaining : \(player2.characters[0].life)
    
    \(player2.characters[1].name) :
    life remaining : \(player2.characters[1].life)
    
    \(player2.characters[2].name) :
    life remaining : \(player2.characters[2].life)
    
    """)
}
}
