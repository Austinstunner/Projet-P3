//
//  Sora's Turn.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 25/11/2020.
//

import Foundation

func turnJ1Sora() {
    print("""
Joueur 1 turn.

Que dois faire \(player1.side.sora.name) ?

[1] Attaquer [2] Soigner



""")
    if let choise = readLine() {
        switch choise {
        case "1":
            print("qui voulez vous attaquer ? ")
            soraAttack()
        case "2":
            print("qui voulez-vous soigner ?")
            soraHealing()
        default:
            turnJ1Sora()
        }
    }
}

//-------------------------------\\
//----------ATTAQUE DE SORA-------\\
//---------------------------------\\

func soraAttack() {
    print("""
-> [1] Xehanort -> [2] Nescient -> [3] Nescient
""")
    if let choise = readLine() {
        switch choise {
        case "1":
            print("\(player1.side.sora.name) attacks \(player2.side.xehanort.name) with his \(player1.side.sora.weapon.name)")
            player2.side.xehanort.life -= player1.side.sora.weapon.damage
            print("\(player2.side.xehanort.name) loses \(player1.side.sora.weapon.damage) HP ! ")
        case "2":
            print("\(player1.side.sora.name) attacks \(player2.side.nescient1.name) with his \(player1.side.sora.weapon.name)")
            player2.side.nescient1.life -= player1.side.sora.weapon.damage
            print("\(player2.side.nescient1.name) loses \(player1.side.sora.weapon.damage) HP ! ")
        case "3":
            print("\(player1.side.sora.name) attacks \(player2.side.nescient2.name) with his \(player1.side.sora.weapon.name)")
            player2.side.nescient2.life -= player1.side.sora.weapon.damage
            print("\(player2.side.nescient2.name) loses \(player1.side.sora.weapon.damage) HP ! ")
        default:
            soraAttack()
        }
    }
}

//-------------------------------\\
//-----------SOIN DE SORA---------\\
//---------------------------------\\

func soraHealing() {
    print("""
-> [1] Sora -> [2] Donald -> [3] Dingo
""")
    if let choise = readLine() {
        switch choise {
        case "1":
            player1.side.sora.life += player1.side.sora.heal
            print("\(player1.side.sora.name) heals himself with his \(player1.side.sora.weapon.type), he recovers \(player1.side.sora.heal) HP !")
        case "2":
            player1.side.donald.life += player1.side.sora.heal
            print("\(player1.side.sora.name) heals \(player1.side.donald.name) with his \(player1.side.sora.weapon.type), he recovers \(player1.side.sora.heal) HP !")
        case "3":
            player1.side.dingo.life += player1.side.sora.heal
            print("\(player1.side.sora.name) heals \(player1.side.dingo.name) with his \(player1.side.sora.weapon.type), he recovers \(player1.side.sora.heal) HP !")
        default:
            soraHealing()
        }
    }
}
