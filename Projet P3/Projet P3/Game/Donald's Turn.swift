//
//  Donald's Turn.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 25/11/2020.
//

import Foundation

//----------------------------------------------------------\\
//----------- MENU DE CHOIX DES ACTIONS DE DONALD -----------\\
//------------------------------------------------------------\\

func turnJ1Donald() {
    print("""

Que dois faire \(goodSide.side.donald.name) ?

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

//---------------------------------\\
//-------- ATTAQUE DE DONALD -------\\
//-----------------------------------\\

func donaldAttack() {
    print("""
-> [1] Xehanort -> [2] Nescient -> [3] Nescient
""")
    if let choise = readLine() {
        switch choise {
        case "1":
            print("\(goodSide.side.donald.name) attacks \(badSide.side.xehanort.name) with his \(goodSide.side.donald.weapon.name)")
            badSide.side.xehanort.life -= goodSide.side.donald.weapon.damage
            print("\(badSide.side.xehanort.name) loses \(goodSide.side.donald.weapon.damage) HP ! ")
        case "2":
            print("\(goodSide.side.donald.name) attacks \(badSide.side.nescient1.name) with his \(goodSide.side.donald.weapon.name)")
            badSide.side.nescient1.life -= goodSide.side.donald.weapon.damage
            print("\(badSide.side.nescient1.name) loses \(goodSide.side.donald.weapon.damage) HP ! ")
        case "3":
            print("\(goodSide.side.donald.name) attacks \(badSide.side.nescient2.name) with his \(goodSide.side.donald.weapon.name)")
            badSide.side.nescient2.life -= goodSide.side.donald.weapon.damage
            print("\(badSide.side.nescient2.name) loses \(goodSide.side.donald.weapon.damage) HP ! ")
        default:
            donaldAttack()
        }
    }
}

//---------------------------------\\
//---------- SOIN DE DONALD --------\\
//-----------------------------------\\

func donaldHealing() {
    print("""
-> [1] Donald -> [2] Sora -> [3] Dingo
""")
    if let choise = readLine() {
        switch choise {
        case "1":
            goodSide.side.donald.life += goodSide.side.donald.heal
            print("\(goodSide.side.donald.name) heals himself with his \(goodSide.side.donald.weapon.type), he recovers \(goodSide.side.donald.heal) HP !")
        case "2":
            goodSide.side.sora.life += goodSide.side.donald.heal
            print("\(goodSide.side.donald.name) heals \(goodSide.side.sora.name) with his \(goodSide.side.donald.weapon.type), he recovers \(goodSide.side.donald.heal) HP !")
        case "3":
            goodSide.side.dingo.life += goodSide.side.donald.heal
            print("\(goodSide.side.donald.name) heals \(goodSide.side.dingo.name) with his \(goodSide.side.donald.weapon.type), he recovers \(goodSide.side.donald.heal) HP !")
        default:
            donaldHealing()
        }
    }
}
