//
//  Donald's Turn.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 25/11/2020.
//

import Foundation

func turnJ1Donald() {
    print("""

Que dois faire \(player1.side.donald.name) ?

[1] Attaquer [2] Soigner



""")
    if let choise = readLine() {
        switch choise {
        case "1":
            print("qui voulez vous attaquer ? ")
            donaldAttack()
        case "2":
            print("qui voulez-vous soigner ?")
            donaldHealing()
        default:
            turnJ1Donald()
        }
    }
}

//-------------------------------\\
//--------ATTAQUE DE DONALD-------\\
//---------------------------------\\

func donaldAttack() {
    print("""
-> [1] Xehanort -> [2] Nescient -> [3] Nescient
""")
    if let choise = readLine() {
        switch choise {
        case "1":
            print("\(player1.side.donald.name) attacks \(player2.side.xehanort.name) with his \(player1.side.donald.weapon.name)")
            player2.side.xehanort.life -= player1.side.donald.weapon.damage
            print("\(player2.side.xehanort.name) loses \(player1.side.donald.weapon.damage) HP ! ")
        case "2":
            print("\(player1.side.donald.name) attacks \(player2.side.nescient1.name) with his \(player1.side.donald.weapon.name)")
            player2.side.nescient1.life -= player1.side.donald.weapon.damage
            print("\(player2.side.nescient1.name) loses \(player1.side.donald.weapon.damage) HP ! ")
        case "3":
            print("\(player1.side.donald.name) attacks \(player2.side.nescient2.name) with his \(player1.side.donald.weapon.name)")
            player2.side.nescient2.life -= player1.side.donald.weapon.damage
            print("\(player2.side.nescient2.name) loses \(player1.side.donald.weapon.damage) HP ! ")
        default:
            donaldAttack()
        }
    }
}

//-------------------------------\\
//----------SOIN DE DONALD--------\\
//---------------------------------\\

func donaldHealing() {
    print("""
-> [1] Donald -> [2] Sora -> [3] Dingo
""")
    if let choise = readLine() {
        switch choise {
        case "1":
            player1.side.donald.life += player1.side.donald.heal
            print("\(player1.side.donald.name) heals himself with his \(player1.side.donald.weapon.type), he recovers \(player1.side.donald.heal) HP !")
        case "2":
            player1.side.sora.life += player1.side.donald.heal
            print("\(player1.side.donald.name) heals \(player1.side.sora.name) with his \(player1.side.donald.weapon.type), he recovers \(player1.side.donald.heal) HP !")
        case "3":
            player1.side.dingo.life += player1.side.donald.heal
            print("\(player1.side.donald.name) heals \(player1.side.dingo.name) with his \(player1.side.donald.weapon.type), he recovers \(player1.side.donald.heal) HP !")
        default:
            donaldHealing()
        }
    }
}
