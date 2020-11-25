//
//  Game.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

/*
 CORRIGER TOUTE LA BRANCHE GAME : REMPLACER player1 PAR goodSide ET player2 PAR badSide
 */










//------------------------------------------------------------------------------------------------\\
//------------------------------------------TOUR DES JOUEURS---------------------------------------\\
//--------------------------------------------------------------------------------------------------\\


func game() {
    defineRound()
    goodsideTurn()
    badsideTurn()
}

// tour du coté good
func goodsideTurn() {
    turnJ1Sora()
    turnJ1Donald()
    turnJ1Dingo()
    round = round + 1
}
//tour du coté bad
func badsideTurn() {
    turnJ2Xehanort()
    turnJ2Nescient1()
    turnJ2Nescient2()
    round = round + 1
}

























//faire un si p1 a goodside alors print deja pris prendre l'autre side}
/*-------------------------------------------------------------------*/



/*  if let choise = readLine() {
 switch choise {
 case "good":
 player2.side = GoodSide()
 case "bad":
 player2.side = BadSide()
 default:
 print("""
 i dont understand !
 
 Select your side !
 [Good] or [Bad]
 
 """)
 
 choiseOfSideP2()
 }
 
 
 } else if player1.side === player2.side {
 print("First player has already take this side ! Choose the other !")
 choiseOfSideP2()
 }
 } */
