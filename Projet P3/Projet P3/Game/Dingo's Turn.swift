//
//  Dingo's Turn.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 25/11/2020.
//

import Foundation

//---------------------------------------------------------\\
//----------- MENU DE CHOIX DES ACTIONS DE DINGO -----------\\
//-----------------------------------------------------------\\

func turnJ1Dingo() {
    print("""

Que dois faire \(goodSide.side.dingo.name) ?

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

//--------------------------------\\
//-------- ATTAQUE DE DINGO -------\\
//----------------------------------\\

func dingoAttack() {
    print("""
-> [1] Xehanort -> [2] Nescient -> [3] Nescient
""")
    if let choise = readLine() {
        switch choise {
        case "1":
            print("\(goodSide.side.dingo.name) attacks \(badSide.side.xehanort.name) with his \(goodSide.side.dingo.weapon.name)")
            badSide.side.xehanort.life -= goodSide.side.dingo.weapon.damage
            print("\(badSide.side.xehanort.name) loses \(goodSide.side.dingo.weapon.damage) HP ! ")
        case "2":
            print("\(goodSide.side.dingo.name) attacks \(badSide.side.nescient1.name) with his \(goodSide.side.dingo.weapon.name)")
            badSide.side.nescient1.life -= goodSide.side.dingo.weapon.damage
            print("\(badSide.side.nescient1.name) loses \(goodSide.side.dingo.weapon.damage) HP ! ")
        case "3":
            print("\(goodSide.side.dingo.name) attacks \(badSide.side.nescient2.name) with his \(goodSide.side.dingo.weapon.name)")
            badSide.side.nescient2.life -= goodSide.side.dingo.weapon.damage
            print("\(badSide.side.nescient2.name) loses \(goodSide.side.dingo.weapon.damage) HP ! ")
        default:
            dingoAttack()
        }
    }
}

//--------------------------------\\
//---------- SOIN DE DINGO --------\\
//----------------------------------\\

func dingoHealing() {
    print("""
-> [1] Dingo -> [2] Sora -> [3] Donald
""")
    if let choise = readLine() {
        switch choise {
        case "1":
            goodSide.side.dingo.life += goodSide.side.dingo.heal
            print("\(goodSide.side.dingo.name) heals himself with his \(goodSide.side.dingo.weapon.type), he recovers \(goodSide.side.dingo.heal) HP !")
        case "2":
            goodSide.side.sora.life += goodSide.side.dingo.heal
            print("\(goodSide.side.dingo.name) heals \(goodSide.side.sora.name) with his \(goodSide.side.dingo.weapon.type), he recovers \(goodSide.side.dingo.heal) HP !")
        case "3":
            goodSide.side.donald.life += goodSide.side.dingo.heal
            print("\(goodSide.side.dingo.name) heals \(goodSide.side.donald.name) with his \(goodSide.side.dingo.weapon.type), he recovers \(goodSide.side.dingo.heal) HP !")
        default:
            dingoHealing()
        }
    }
}
