//
//  Nescient1's Turn.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 25/11/2020.
//

import Foundation

func turnJ2Nescient1() {
    print("""


Que dois faire \(player2.side.nescient1.name) ?

[1] Attaquer [2] Soigner



""")
    if let choise = readLine() {
        switch choise {
        case "1":
            print("qui voulez vous attaquer ? ")
            nescient1Attack()
        case "2":
            print("qui voulez-vous soigner ?")
            nescient1Healing()
        default:
            turnJ2Nescient1()
        }
    }
}

//-------------------------------------\\
//----------ATTAQUE DE NESCIENT 1-------\\
//---------------------------------------\\

func nescient1Attack() {
    print("""
-> [1] Sora -> [2] Donald -> [3] Dingo
""")
    if let choise = readLine() {
        switch choise {
        case "1":
            print("\(player2.side.nescient1.name) attacks \(player1.side.sora.name) with his \(player2.side.nescient1.weapon.name)")
            player1.side.sora.life -= player2.side.nescient1.weapon.damage
            print("\(player1.side.sora.name) loses \(player2.side.nescient1.weapon.damage) HP ! ")
        case "2":
            print("\(player2.side.nescient1.name) attacks \(player1.side.donald.name) with his \(player2.side.nescient1.weapon.name)")
            player1.side.donald.life -= player2.side.nescient1.weapon.damage
            print("\(player1.side.donald.name) loses \(player2.side.nescient1.weapon.damage) HP ! ")
        case "3":
            print("\(player2.side.nescient1.name) attacks \(player1.side.dingo.name) with his \(player2.side.nescient1.weapon.name)")
            player1.side.dingo.life -= player2.side.nescient1.weapon.damage
            print("\(player1.side.dingo.name) loses \(player2.side.nescient1.weapon.damage) HP ! ")
        default:
            nescient1Attack()
        }
    }
}

//-------------------------------------\\
//------------SOIN DE NESCIENT 1--------\\
//---------------------------------------\\

func nescient1Healing() {
    print("""
-> [1] Nescient -> [2] Xehanort -> [3] Nescient
""")
    if let choise = readLine() {
        switch choise {
        case "1":
            player2.side.nescient1.life += player2.side.nescient1.heal
            print("\(player2.side.nescient1.name) heals himself with his \(player2.side.nescient1.weapon.type), he recovers \(player2.side.nescient1.heal) HP !")
        case "2":
            player2.side.xehanort.life += player2.side.nescient1.heal
            print("\(player2.side.nescient1.name) heals \(player2.side.xehanort.name), he recovers \(player2.side.nescient1.heal) HP !")
        case "3":
            player1.side.nescient2.life += player1.side.nescient1.heal
            print("\(player2.side.nescient1.name) heals \(player2.side.nescient2.name), he recovers \(player2.side.nescient1.heal) HP !")
        default:
            nescient1Healing()
        }
    }
}
