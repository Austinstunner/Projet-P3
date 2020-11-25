//
//  Dingo's Turn.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 25/11/2020.
//

import Foundation

func turnJ1Dingo() {
    print("""

Que dois faire \(player1.side.dingo.name) ?

[1] Attaquer [2] Soigner



""")
    if let choise = readLine() {
        switch choise {
        case "1":
            print("qui voulez vous attaquer ? ")
            dingoAttack()
        case "2":
            print("qui voulez-vous soigner ?")
            dingoHealing()
        default:
            turnJ1Dingo()
        }
    }
}

//-------------------------------\\
//--------ATTAQUE DE DINGO-------\\
//---------------------------------\\

func dingoAttack() {
    print("""
-> [1] Xehanort -> [2] Nescient -> [3] Nescient
""")
    if let choise = readLine() {
        switch choise {
        case "1":
            print("\(player1.side.dingo.name) attacks \(player2.side.xehanort.name) with his \(player1.side.dingo.weapon.name)")
            player2.side.xehanort.life -= player1.side.dingo.weapon.damage
            print("\(player2.side.xehanort.name) loses \(player1.side.dingo.weapon.damage) HP ! ")
        case "2":
            print("\(player1.side.dingo.name) attacks \(player2.side.nescient1.name) with his \(player1.side.dingo.weapon.name)")
            player2.side.nescient1.life -= player1.side.dingo.weapon.damage
            print("\(player2.side.nescient1.name) loses \(player1.side.dingo.weapon.damage) HP ! ")
        case "3":
            print("\(player1.side.dingo.name) attacks \(player2.side.nescient2.name) with his \(player1.side.dingo.weapon.name)")
            player2.side.nescient2.life -= player1.side.dingo.weapon.damage
            print("\(player2.side.nescient2.name) loses \(player1.side.dingo.weapon.damage) HP ! ")
        default:
            dingoAttack()
        }
    }
}

//-------------------------------\\
//----------SOIN DE DINGO--------\\
//---------------------------------\\

func dingoHealing() {
    print("""
-> [1] Dingo -> [2] Sora -> [3] Donald
""")
    if let choise = readLine() {
        switch choise {
        case "1":
            player1.side.dingo.life += player1.side.dingo.heal
            print("\(player1.side.dingo.name) heals himself with his \(player1.side.dingo.weapon.type), he recovers \(player1.side.dingo.heal) HP !")
        case "2":
            player1.side.sora.life += player1.side.dingo.heal
            print("\(player1.side.dingo.name) heals \(player1.side.sora.name) with his \(player1.side.dingo.weapon.type), he recovers \(player1.side.dingo.heal) HP !")
        case "3":
            player1.side.donald.life += player1.side.dingo.heal
            print("\(player1.side.dingo.name) heals \(player1.side.donald.name) with his \(player1.side.dingo.weapon.type), he recovers \(player1.side.dingo.heal) HP !")
        default:
            dingoHealing()
        }
    }
}
