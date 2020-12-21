//
//  Nescient1's Turn.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 25/11/2020.
//

import Foundation

//--------------------------------------------------------------\\
//----------- MENU DE CHOIX DES ACTIONS DE NESCIENT 1 -----------\\
//----------------------------------------------------------------\\

func turnJ2Nescient1() {
    print("""

Que dois faire \(badSide.side.nescient1.name) 1 ?

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

//---------------------------------------\\
//---------- ATTAQUE DE NESCIENT 1 -------\\
//-----------------------------------------\\

func nescient1Attack() {
    print("""
-> [1] Sora -> [2] Donald -> [3] Dingo
""")
    if let choise = readLine() {
        switch choise {
        case "1":
            print("\(badSide.side.nescient1.name) attacks \(goodSide.side.sora.name) with his \(badSide.side.nescient1.weapon.name)")
            goodSide.side.sora.life -= badSide.side.nescient1.weapon.damage
            print("\(goodSide.side.sora.name) loses \(badSide.side.nescient1.weapon.damage) HP ! ")
        case "2":
            print("\(badSide.side.nescient1.name) attacks \(goodSide.side.donald.name) with his \(badSide.side.nescient1.weapon.name)")
            goodSide.side.donald.life -= badSide.side.nescient1.weapon.damage
            print("\(goodSide.side.donald.name) loses \(badSide.side.nescient1.weapon.damage) HP ! ")
        case "3":
            print("\(badSide.side.nescient1.name) attacks \(goodSide.side.dingo.name) with his \(badSide.side.nescient1.weapon.name)")
            goodSide.side.dingo.life -= badSide.side.nescient1.weapon.damage
            print("\(goodSide.side.dingo.name) loses \(badSide.side.nescient1.weapon.damage) HP ! ")
        default:
            nescient1Attack()
        }
    }
}

//---------------------------------------\\
//------------ SOIN DE NESCIENT 1 --------\\
//-----------------------------------------\\

func nescient1Healing() {
    print("""
-> [1] Nescient -> [2] Xehanort -> [3] Nescient
""")
    if let choise = readLine() {
        switch choise {
        case "1":
            badSide.side.nescient1.life += badSide.side.nescient1.heal
            print("\(badSide.side.nescient1.name) heals himself with his \(badSide.side.nescient1.weapon.type), he recovers \(badSide.side.nescient1.heal) HP !")
        case "2":
            badSide.side.xehanort.life += badSide.side.nescient1.heal
            print("\(badSide.side.nescient1.name) heals \(badSide.side.xehanort.name), he recovers \(badSide.side.nescient1.heal) HP !")
        case "3":
            goodSide.side.nescient2.life += goodSide.side.nescient1.heal
            print("\(badSide.side.nescient1.name) heals \(badSide.side.nescient2.name), he recovers \(badSide.side.nescient1.heal) HP !")
        default:
            nescient1Healing()
        }
    }
}
