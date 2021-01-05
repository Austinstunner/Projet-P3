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

final class Game {
    var round: Int = 1
    let player1 = Player(nameOfTheTeam: "")
    let player2 = Player(nameOfTheTeam: "")
    var secretWeapon = Treasure()
 
    // Start the Game

  func runGame() {
      var p1Lose = player1.hasLoose()
      var p2Lose = player2.hasLoose()
    
      while p1Lose == false && p2Lose == false {
        var currentPlayer = player1
        
        if round % 2 == 1 {
            
              print("""


                    🔴[\(currentPlayer.nameOfTheTeam)] it's your turn
                    """)
              currentPlayer.fight(target: player2)
            
          } else {
            
            currentPlayer = player2
              print("""


                    🔵[\(currentPlayer.nameOfTheTeam)] it's your turn
                    """)
              currentPlayer.fight(target: player1)
          }
        
          round += 1
        let randomOn100 = arc4random_uniform(100)
        let getChara = Int.random(in: 1..<currentPlayer.characters.count)
        let getSecret = secretWeapon.chooseWeaponRandomly()
        
        if randomOn100 > 50 {
            print("A chest appear near \(currentPlayer.nameOfTheTeam)...")
            
            currentPlayer.characters[getChara].weapon = getSecret
            print("\(currentPlayer.characters[getChara].name) open it while the others fighting and find  \(secretWeapon.chooseWeaponRandomly().name) !")
        }
        
          p1Lose = player1.hasLoose()
          p2Lose = player2.hasLoose()
      }
    
      endGame()
    statistic()
  }
}
