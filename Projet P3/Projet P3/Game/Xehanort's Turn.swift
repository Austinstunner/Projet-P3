//
//  Xehanort's Turn.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 25/11/2020.
//

import Foundation

func turnJ2Xehanort() {
    print("""
Joueur 2 turn.

Que dois faire \(player2.side.xehanort.name) ?

[1] Attaquer [2] Soigner



""")
    if let choise = readLine() {
        switch choise {
        case "1":
            print("qui voulez vous attaquer ? ")
            xehanortAttack()
        case "2":
            print("qui voulez-vous soigner ?")
            xehanortHealing()
        default:
            turnJ2Xehanort()
        }
    }
}

//-----------------------------------\\
//----------ATTAQUE DE XEHANORT-------\\
//-------------------------------------\\

func xehanortAttack() {
    print("""
-> [1] Sora -> [2] Donald -> [3] Dingo
""")
    if let choise = readLine() {
        switch choise {
        case "1":
            print("\(player2.side.xehanort.name) attacks \(player1.side.sora.name) with his \(player2.side.xehanort.weapon.name)")
            player1.side.sora.life -= player2.side.xehanort.weapon.damage
            print("\(player1.side.sora.name) loses \(player2.side.xehanort.weapon.damage) HP ! ")
        case "2":
            print("\(player2.side.xehanort.name) attacks \(player1.side.donald.name) with his \(player2.side.xehanort.weapon.name)")
            player1.side.donald.life -= player2.side.xehanort.weapon.damage
            print("\(player1.side.donald.name) loses \(player2.side.xehanort.weapon.damage) HP ! ")
        case "3":
            print("\(player2.side.xehanort.name) attacks \(player1.side.dingo.name) with his \(player2.side.xehanort.weapon.name)")
            player1.side.dingo.life -= player2.side.xehanort.weapon.damage
            print("\(player1.side.dingo.name) loses \(player2.side.xehanort.weapon.damage) HP ! ")
        default:
            xehanortAttack()
        }
    }
}

//-----------------------------------\\
//------------SOIN DE XEHANORT--------\\
//-------------------------------------\\

func xehanortHealing() {
    print("""
-> [1] Xehanort -> [2] Nescient -> [3] Nescient
""")
    if let choise = readLine() {
        switch choise {
        case "1":
            player2.side.xehanort.life += player2.side.xehanort.heal
            print("\(player2.side.xehanort.name) heals himself with his \(player2.side.xehanort.weapon.type), he recovers \(player2.side.xehanort.heal) HP !")
        case "2":
            player2.side.nescient1.life += player2.side.xehanort.heal
            print("\(player2.side.xehanort.name) heals \(player2.side.nescient1.name), he recovers \(player2.side.xehanort.heal) HP !")
        case "3":
            player1.side.dingo.life += player1.side.sora.heal
            print("\(player2.side.xehanort.name) heals \(player2.side.nescient2.name), he recovers \(player2.side.xehanort.heal) HP !")
        default:
            xehanortHealing()
        }
    }
}
