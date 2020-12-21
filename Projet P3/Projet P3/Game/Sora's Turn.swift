//
//  Sora's Turn.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 25/11/2020.
//

import Foundation

//--------------------------------------------------------\\
//----------- MENU DE CHOIX DES ACTIONS DE SORA -----------\\
//----------------------------------------------------------\\

func turnJ1Sora() {
    print("""
Joueur 1 turn.

Que dois faire \(goodSide.side.sora.name) ?

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

//---------------------------------\\
//---------- ATTAQUE DE SORA -------\\
//-----------------------------------\\

func soraAttack() {
    print("""
-> [1] Xehanort -> [2] Nescient -> [3] Nescient
""")
    if let choise = readLine() {
        switch choise {
        case "1":
            print("\(goodSide.side.sora.name) attacks \(goodSide.side.xehanort.name) with his \(goodSide.side.sora.weapon.name)")
            badSide.side.xehanort.life -= goodSide.side.sora.weapon.damage
            print("\(badSide.side.xehanort.name) loses \(goodSide.side.sora.weapon.damage) HP ! ")
        case "2":
            print("\(goodSide.side.sora.name) attacks \(badSide.side.nescient1.name) with his \(goodSide.side.sora.weapon.name)")
            badSide.side.nescient1.life -= goodSide.side.sora.weapon.damage
            print("\(badSide.side.nescient1.name) loses \(goodSide.side.sora.weapon.damage) HP ! ")
        case "3":
            print("\(goodSide.side.sora.name) attacks \(badSide.side.nescient2.name) with his \(goodSide.side.sora.weapon.name)")
            badSide.side.nescient2.life -= goodSide.side.sora.weapon.damage
            print("\(badSide.side.nescient2.name) loses \(goodSide.side.sora.weapon.damage) HP ! ")
        default:
            soraAttack()
        }
    }
}

//---------------------------------\\
//----------- SOIN DE SORA ---------\\
//-----------------------------------\\

func soraHealing() {
    print("""
-> [1] Sora -> [2] Donald -> [3] Dingo
""")
    if let choise = readLine() {
        switch choise {
        case "1":
            goodSide.side.sora.life += goodSide.side.sora.heal
            print("\(goodSide.side.sora.name) heals himself with his \(goodSide.side.sora.weapon.type), he recovers \(goodSide.side.sora.heal) HP !")
        case "2":
            goodSide.side.donald.life += goodSide.side.sora.heal
            print("\(goodSide.side.sora.name) heals \(goodSide.side.donald.name) with his \(goodSide.side.sora.weapon.type), he recovers \(goodSide.side.sora.heal) HP !")
        case "3":
            goodSide.side.dingo.life += goodSide.side.sora.heal
            print("\(goodSide.side.sora.name) heals \(goodSide.side.dingo.name) with his \(goodSide.side.sora.weapon.type), he recovers \(goodSide.side.sora.heal) HP !")
        default:
            soraHealing()
        }
    }
}
