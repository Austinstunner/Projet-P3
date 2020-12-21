//
//  Player1.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 07/12/2020.
//

import Foundation

var player2 = Player(nameOfTheTeam: "")

func createNameOfTeamP2() {
    print("""
 _________________________________________
⎮Player 2, choose the name of your team : ⎮
 -----------------------------------------

""")
    player2.nameOfTheTeam = readLine()!
}

func selectCharacter1P2() {
    
    print("""
         __________________________________________
        ⎮Select the first character of your team : ⎮
         ------------------------------------------

        [1]🗝 Keyblade Wielder [2]🧙🏻‍♂️ Royal Sorcecer [3]💂🏻 Royal Defender [4]🧟 Monster

        """)
    if let choix = readLine() {
        switch choix {
        case "1":
            player2.characters.append(KeybladeWielder())
            print("You choose a Keyblade Wielder")
        case "2":
            player2.characters.append(RoyalSorcerer())
            print("You choose a Royal Sorcerer")
        case "3":
            player2.characters.append(RoyalDefender())
            print("You choose a Royal Defender")
        case "4":
            player2.characters.append(Monster())
            print("You choose a Monster")
        default:
            selectCharacter1P2()
            
        }
    }
}

func nameOfCharacter1P2() {
    print("""

        And what's his name ?
        """)
    player2.characters[0].name = readLine()!
}

//-----------

func selectCharacter2P2() {
    
    print("""
         ___________________________________________
        ⎮Select the second character of your team : ⎮
         -------------------------------------------

        [1]🗝 Keyblade Wielder [2]🧙🏻‍♂️ Royal Sorcecer [3]💂🏻 Royal Defender [4]🧟 Monster

        """)
    if let choix = readLine() {
        switch choix {
        case "1":
            player2.characters.append(KeybladeWielder())
            print("You choose a Keyblade Wielder")
        case "2":
            player2.characters.append(RoyalSorcerer())
            print("You choose a Royal Sorcerer")
        case "3":
            player2.characters.append(RoyalDefender())
            print("You choose a Royal Defender")
        case "4":
            player2.characters.append(Monster())
            print("You choose a Monster")
        default:
            selectCharacter2P2()
        }
    }
}

func nameOfCharacter2P2() {
    
    print("""

        And what's his name ?
        """)
    player2.characters[1].name = readLine()!
}

//------------

func selectCharacter3P2() {
    
    print("""
         ___________________________________________
        ⎮ Select the third character of your team : ⎮
         -------------------------------------------

        [1]🗝 Keyblade Wielder [2]🧙🏻‍♂️ Royal Sorcecer [3]💂🏻 Royal Defender [4]🧟 Monster

        """)
    if let choix = readLine() {
        switch choix {
        case "1":
            player2.characters.append(KeybladeWielder())
            print("You choose a Keyblade Wielder")
        case "2":
            player2.characters.append(RoyalSorcerer())
            print("You choose a Royal Sorcerer")
        case "3":
            player2.characters.append(RoyalDefender())
            print("You choose a Royal Defender")
        case "4":
            player2.characters.append(Monster())
            print("You choose a Monster")
        default:
            selectCharacter3P2()
        }
    }
}

func nameOfCharacter3P2() {
    
    print("""

        And what's his name ?
        """)
    player2.characters[2].name = readLine()!
}

//------------

func createP2() {
    selectCharacter1P2()
    nameOfCharacter1P2()
    selectCharacter2P2()
    nameOfCharacter2P2()
    selectCharacter3P2()
    nameOfCharacter3P2()
}
