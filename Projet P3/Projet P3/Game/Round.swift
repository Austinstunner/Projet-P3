//
//  Round.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 25/11/2020.
//

import Foundation

//Création de la notion de Round du jeu

var round: Int = 0

func defineRound() {
    while round != 50 {
        game()
    }
    if round == 50 {
        tiedGame()
    } else if goodSide.side.sora.heal == 0, goodSide.side.donald.heal == 0, goodSide.side.dingo.heal == 0 {
        endGameP1()
    } else if badSide.side.xehanort.heal == 0, goodSide.side.nescient1.heal == 0, badSide.side.nescient2.heal == 0 {
        endGameP2()
    }
}

//fin de jeu égalité
func tiedGame() {
    print("The game exceed the time alloted so player 1 and player 2 are tied")
}

//fin de jeu perte J1
func endGameP1() {
    print("All the character of player 1 is dead, player Two win ")
    
}

//fin de jeu perte J2
func endGameP2() {
    print("All the character of player 2 is dead, player One win ")
}





