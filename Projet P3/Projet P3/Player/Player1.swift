//
//  Player1.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 07/12/2020.
//

import Foundation

var player1 = Player(nameOfTheTeam: "")

//--- Create the name of the team
func createNameOfTeamP1() {
    print("""
 _________________________________________
⎮Player 1, choose the name of your team : ⎮
 -----------------------------------------

""")
    player1.nameOfTheTeam = readLine()!
}

//--- select the first character

func selectCharacter1P1() {
    
    print("""
         __________________________________________
        ⎮Select the first character of your team : ⎮
         ------------------------------------------

        [1]🗝 Keyblade Wielder [2]🧙🏻‍♂️ Royal Sorcecer [3]💂🏻 Royal Defender [4]🧟 Monster

        """)
    if let choix = readLine() {
        switch choix {
        case "1":
            player1.characters.append(KeybladeWielder())
            print("""

                    You choose a Keyblade Wielder
                    """)
        case "2":
            player1.characters.append(RoyalSorcerer())
            print("""

                    You choose a Royal Sorcerer
                    """)
        case "3":
            player1.characters.append(RoyalDefender())
            print("""

                    You choose a Royal Defender
                    """)
        case "4":
            player1.characters.append(Monster())
            print("""
                    You choose a Monster
                    """)
        default:
            selectCharacter1P1()
            
        }
    }
}

//-- define name of the character selected

func nameOfCharacter1P1() {
    print("""

        And what's his name ?
        """)
    player1.characters[0].name = readLine()!
}

//-----------

//--- select the second character

func selectCharacter2P1() {
    
    print("""
         ___________________________________________
        ⎮Select the second character of your team : ⎮
         -------------------------------------------

        [1]🗝 Keyblade Wielder [2]🧙🏻‍♂️ Royal Sorcecer [3]💂🏻 Royal Defender [4]🧟 Monster

        """)
    if let choix = readLine() {
        switch choix {
        case "1":
            player1.characters.append(KeybladeWielder())
            print("""

            You choose a Keyblade Wielder
            """)
        case "2":
            player1.characters.append(RoyalSorcerer())
            print("""

            You choose a Royal Sorcerer
            """)
        case "3":
            player1.characters.append(RoyalDefender())
            print("""

            You choose a Royal Defender
            """)
        case "4":
            player1.characters.append(Monster())
            print("""

            You choose a Monster
            """)
        default:
            selectCharacter2P1()
        }
    }
}

//-- define the name of the second character

func nameOfCharacter2P1() {
    
    print("""

        And what's his name ?
        """)
    player1.characters[1].name = readLine()!
}

//------------

//--- select the third character

func selectCharacter3P1() {
    
    print("""
         ___________________________________________
        ⎮ Select the third character of your team : ⎮
         -------------------------------------------

        [1]🗝 Keyblade Wielder [2]🧙🏻‍♂️ Royal Sorcecer [3]💂🏻 Royal Defender [4]🧟 Monster

        """)
    if let choix = readLine() {
        switch choix {
        case "1":
            player1.characters.append(KeybladeWielder())
            print("You choose a Keyblade Wielder")
        case "2":
            player1.characters.append(RoyalSorcerer())
            print("You choose a Royal Sorcerer")
        case "3":
            player1.characters.append(RoyalDefender())
            print("You choose a Royal Defender")
        case "4":
            player1.characters.append(Monster())
            print("You choose a Monster")
        default:
            selectCharacter3P1()
        }
    }
}

//-- define the name of the third character

func nameOfCharacter3P1() {
    
    print("""

        And what's his name ?
        """)
    player1.characters[2].name = readLine()!
}

//------------

//-- function who's listing the order of execution of creating player 1's team 
func createP1() {
    selectCharacter1P1()
    nameOfCharacter1P1()
    selectCharacter2P1()
    nameOfCharacter2P1()
    selectCharacter3P1()
    nameOfCharacter3P1()
}
