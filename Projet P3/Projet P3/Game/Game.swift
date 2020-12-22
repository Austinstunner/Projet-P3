//
//  Game.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

import Foundation

//--------------------------------------------------------------------------------------\\
//------------------------------------------ GAME ---------------------------------------\\
//----------------------------------------------------------------------------------------\\

  // Start the Game and switch round between player 1 and 2
var round: Int = 1
  func runGame() {
      var p1Lost = player1.hasLoose()
      var p2Lost = player2.hasLoose()
      while p1Lost == false && p2Lost == false {
          if round % 2 == 1 {
              print("""
                                [\(player1.nameOfTheTeam)] it's your turn
                    """)
              player1.fight(target: player2)
          } else if round % 2 == 0 {
              print("""
                                [\(player2.nameOfTheTeam)] it's your turn
                    """)
              player2.fight(target: player1)
          }
          round += 1
          p1Lost = player1.hasLoose()
          p2Lost = player2.hasLoose()
      }
      endGame()
    statistic()
  }

//-------------------------------------------------------------------------------------------------\\
//------------------------------------------ END OF THE GAME ---------------------------------------\\
//---------------------------------------------------------------------------------------------------\\
    
  
// End Game : display an ending message and show statistics for each one when a player loose.
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

