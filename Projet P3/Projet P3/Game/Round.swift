//
//  Round.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 25/11/2020.
//

import Foundation


//--------------------------------------------------------------------------------\\
//----------- DEFINITION DE LA FONCTION QUI DEFINIE LE CYCLE DES ROUNDS -----------\\
//----------------------------------------------------------------------------------\\

/*
func defineRound() {
    while round <= 10 {
        game()
        
    if round == 10 {
    break
        
    }
        endGame()
    }
}
*/

/*

//------ TOUR J1 ---------

func round1P1() {
    
print("\(player1.nameOfTheTeam)'s Turn")

print("""
 ____________________________________
⎮ROUND \(round)
⎮\(player1.characters[0].name)'s turn
⎮PV:\(player1.characters[0].life)
 What \(player1.characters[0].name) has to do ?
    [1] ATTACK                [2] HEAL ⎮
---------------------------------------
""")

    if let choise = readLine() {
    switch choise {
    case "1":
        attack1J1()
    case "2":
        heal1J1()
    default :
        round1P1()
        }
    }
}

//--------------

func round2P1() {
    
    print("\(player1.nameOfTheTeam)'s Turn")

print("""
 ____________________________________
⎮ROUND \(round)
⎮\(player1.characters[1].name)'s turn
⎮PV:\(player1.characters[1].life)

 What \(player1.characters[1].name) has to do ?
    [1] ATTACK                [2] HEAL          ⎮
 -----------------------------------------------
""")

    if let choise = readLine() {
    switch choise {
    case "1":
        attack2J1()
    case "2":
        heal2J1()
    default :
        round2P1()
        }
    }
}

//-----------------

func round3P1() {
    
print("\(player1.nameOfTheTeam)'s Turn")

print("""
 ____________________________________
⎮ROUND \(round)
⎮\(player1.characters[2].name)'s turn
⎮PV:\(player1.characters[2].life)

 What \(player1.characters[2].name) has to do ?
    [1] ATTACK                [2] HEAL          ⎮
------------------------------------------------
""")

    if let choise = readLine() {
    switch choise {
    case "1":
        attack3J1()
    case "2":
        heal3J1()
    default :
        round3P1()
        }
    }
}

//----------- TOUR J2 -----------

func round1P2() {
    
print("\(player2.nameOfTheTeam)'s Turn")

print("""
 ____________________________________
⎮ROUND \(round)
⎮\(player2.characters[0].name)'s turn
⎮PV:\(player2.characters[0].life)

 What \(player2.characters[0].name) has to do ?
    [1] ATTACK                [2] HEAL          ⎮
------------------------------------------------
""")

    if let choise = readLine() {
    switch choise {
    case "1":
        attack1J2()
    case "2":
        heal1J2()
    default :
        round1P2()
        }
    }
}

//--------------

func round2P2() {
    
print("\(player2.nameOfTheTeam)'s Turn")

print("""
 ____________________________________
⎮ROUND \(round)
⎮\(player2.characters[1].name)'s turn
⎮PV:\(player2.characters[1].life)

 What \(player2.characters[1].name) has to do ?
    [1] ATTACK                [2] HEAL          ⎮
------------------------------------------------
""")

    if let choise = readLine() {
    switch choise {
    case "1":
        attack2J2()
    case "2":
        heal2J2()
    default :
        round2P2()
        }
    }
}

//-----------------

func round3P2() {
    
print("\(player2.nameOfTheTeam)'s Turn")

print("""
 ____________________________________
⎮ROUND \(round)
⎮\(player2.characters[2].name)'s turn
⎮PV:\(player2.characters[2].life)

 What \(player2.characters[2].name) has to do ?
    [1] ATTACK                [2] HEAL          ⎮
------------------------------------------------
""")

    if let choise = readLine() {
    switch choise {
    case "1":
        attack3J2()
    case "2":
        heal3J2()
    default :
        round3P2()
        }
    }
}






func chooseCharacterP1() {
    print("""
    Select your character :
    [1] \(player1.characters[0])  [2] \(player1.characters[1])  [3] \(player1.characters[2])
    """)
    if let choise = readLine() {
        switch choise {
        case"1":
            round1P1()
        case"2":
            round2P1()
        case"3":
            round3P1()
        default:
            chooseCharacterP1()
        }
    }
}

func chooseCharacterP2() {
    print("""
    Select your character :
    [1] \(player2.characters[0])  [2] \(player2.characters[1])  [3] \(player2.characters[2])
    """)
    if let choise = readLine() {
        switch choise {
        case"1":
            round1P2()
        case"2":
            round2P2()
        case"3":
            round3P2()
        default:
            chooseCharacterP2()
        }
    }
}
*/
