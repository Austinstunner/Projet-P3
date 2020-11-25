//
//  Nescient2's Turn.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 25/11/2020.
//

import Foundation

func turnJ2Nescient2() {
    print("""


Que dois faire \(player2.side.nescient2.name) ?

[1] Attaquer [2] Soigner



""")
    if let choise = readLine() {
        switch choise {
        case "1":
            print("qui voulez vous attaquer ? ")
            nescient2Attack()
        case "2":
            print("qui voulez-vous soigner ?")
            nescient2Healing()
        default:
            turnJ2Nescient2()
        }
    }
}

//-------------------------------------\\
//----------ATTAQUE DE NESCIENT 2-------\\
//---------------------------------------\\

func nescient2Attack() {
    print("""
-> [1] Sora -> [2] Donald -> [3] Dingo
""")
    if let choise = readLine() {
        switch choise {
        case "1":
            print("\(player2.side.nescient2.name) attacks \(player1.side.sora.name) with his \(player2.side.nescient2.weapon.name)")
            player1.side.sora.life -= player2.side.nescient2.weapon.damage
            print("\(player1.side.sora.name) loses \(player2.side.nescient2.weapon.damage) HP ! ")
        case "2":
            print("\(player2.side.nescient2.name) attacks \(player1.side.donald.name) with his \(player2.side.nescient2.weapon.name)")
            player1.side.donald.life -= player2.side.nescient2.weapon.damage
            print("\(player1.side.donald.name) loses \(player2.side.nescient2.weapon.damage) HP ! ")
        case "3":
            print("\(player2.side.nescient2.name) attacks \(player1.side.dingo.name) with his \(player2.side.nescient2.weapon.name)")
            player1.side.dingo.life -= player2.side.nescient2.weapon.damage
            print("\(player1.side.dingo.name) loses \(player2.side.nescient2.weapon.damage) HP ! ")
        default:
            nescient2Attack()
        }
    }
}

//-------------------------------------\\
//------------SOIN DE NESCIENT 2--------\\
//---------------------------------------\\

func nescient2Healing() {
    print("""
-> [1] Nescient -> [2] Xehanort -> [3] Nescient
""")
    if let choise = readLine() {
        switch choise {
        case "1":
            player2.side.nescient2.life += player2.side.nescient2.heal
            print("\(player2.side.nescient2.name) heals himself with his \(player2.side.nescient2.weapon.type), he recovers \(player2.side.nescient2.heal) HP !")
        case "2":
            player2.side.xehanort.life += player2.side.nescient2.heal
            print("\(player2.side.nescient2.name) heals \(player2.side.xehanort.name), he recovers \(player2.side.nescient2.heal) HP !")
        case "3":
            player1.side.nescient1.life += player1.side.nescient2.heal
            print("\(player2.side.nescient2.name) heals \(player2.side.nescient1.name), he recovers \(player2.side.nescient2.heal) HP !")
        default:
            nescient2Healing()
        }
    }
}
