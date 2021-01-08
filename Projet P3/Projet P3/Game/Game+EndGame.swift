//
//  Game+EndGame.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 02/01/2021.
//

import Foundation

extension Game {
    //-- function End Game for the end of a party, with conditions.
    func endGame() {
        print("🎮 End Game")
        if player1.hasLoose() {
            print("""
                The \(player1.nameOfTheTeam) lost the battle.
                Party is over after \(round) round.
                The winner is \(player2.nameOfTheTeam)'s team !
                """)
        } else {
            print("""
                The \(player2.nameOfTheTeam) lost the battle.
                Party is over after \(round) round.
                The winner is \(player1.nameOfTheTeam)'s team !
                """)
            
        }
    }
}
