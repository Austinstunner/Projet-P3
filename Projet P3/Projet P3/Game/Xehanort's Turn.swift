//
//  Xehanort's Turn.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 25/11/2020.
//

import Foundation

//------------------------------------------------------------\\
//----------- MENU DE CHOIX DES ACTIONS DE XEHANORT -----------\\
//--------------------------------------------------------------\\

func turnJ2Xehanort() {
    print("""

Joueur 2 turn.

Que dois faire \(badSide.side.xehanort.name) ?

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

//-------------------------------------\\
//---------- ATTAQUE DE XEHANORT -------\\
//---------------------------------------\\

func xehanortAttack() {
    print("""
-> [1] Sora -> [2] Donald -> [3] Dingo
""")
    if let choise = readLine() {
        switch choise {
        case "1":
            print("\(badSide.side.xehanort.name) attacks \(goodSide.side.sora.name) with his \(badSide.side.xehanort.weapon.name)")
            goodSide.side.sora.life -= badSide.side.xehanort.weapon.damage
            print("\(goodSide.side.sora.name) loses \(badSide.side.xehanort.weapon.damage) HP ! ")
        case "2":
            print("\(badSide.side.xehanort.name) attacks \(goodSide.side.donald.name) with his \(badSide.side.xehanort.weapon.name)")
            goodSide.side.donald.life -= badSide.side.xehanort.weapon.damage
            print("\(goodSide.side.donald.name) loses \(badSide.side.xehanort.weapon.damage) HP ! ")
        case "3":
            print("\(badSide.side.xehanort.name) attacks \(goodSide.side.dingo.name) with his \(badSide.side.xehanort.weapon.name)")
            goodSide.side.dingo.life -= badSide.side.xehanort.weapon.damage
            print("\(goodSide.side.dingo.name) loses \(badSide.side.xehanort.weapon.damage) HP ! ")
        default:
            xehanortAttack()
        }
    }
}

//-------------------------------------\\
//------------ SOIN DE XEHANORT --------\\
//---------------------------------------\\

func xehanortHealing() {
    print("""
-> [1] Xehanort -> [2] Nescient -> [3] Nescient
""")
    if let choise = readLine() {
        switch choise {
        case "1":
            badSide.side.xehanort.life += badSide.side.xehanort.heal
            print("\(badSide.side.xehanort.name) heals himself with his \(badSide.side.xehanort.weapon.type), he recovers \(badSide.side.xehanort.heal) HP !")
        case "2":
            badSide.side.nescient1.life += badSide.side.xehanort.heal
            print("\(badSide.side.xehanort.name) heals \(badSide.side.nescient1.name), he recovers \(badSide.side.xehanort.heal) HP !")
        case "3":
            goodSide.side.dingo.life += goodSide.side.sora.heal
            print("\(badSide.side.xehanort.name) heals \(badSide.side.nescient2.name), he recovers \(badSide.side.xehanort.heal) HP !")
        default:
            xehanortHealing()
        }
    }
}
