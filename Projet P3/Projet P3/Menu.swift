//
//  Menu.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

import Foundation

//Intro du jeu
func entrance() {
    print("""
The Kingdom Hearts lead the peace of kingdoms of the original world.

Master Xehanort, the most evil being of all time dreams of getting their hands on the x-Blade
thanks to his Nescients in order to separate shadow and light from the hearts of all people living
in these worlds in order to keep the worst of them.

King Mickey decided to send the only person with the power to stop him : Sora !

Help by his friends Donald and Goofy, as well as his KeyBlade, he embarks
on a war against the darkness !

"""
    )
}

//Ecran titre
func screenTitle() {
    print("""
KINGDOM HEARTS : BATTLE FOR THE HEARTS OF ALL WORLDS

"""
    )
    
}

// Passage des dialogues style GameBoy
func passDialogue() {
    print("Press enter to continue..")
    
    if readLine() != nil {
        
    }
}

//Sélection du mode de Jeu
func chooseMenu() {
    print("""

                        Choose an option :

                [1]Play                   [2]Rules

        """)
    
    if let choise = readLine() {
        switch choise {
        case "1":
            play()
            
        case "2":
            rules()
            passDialogue()
            chooseMenu()
        default:
            print("I don't understand")
            chooseMenu()
        }
    }
}

func rules() {
    print("""
        ➡️ First, Player 1 has to choose 3 fighters in the roster of the game.
        ➡️ Second, Player 2 must do the same.
        
        Then, the Fight begin ⚔️ !
        Turn by turn you have to decide what your characters should do, one by one :
            ➢ Attack : choose one of the opponent's character to attack.
            ➢ Use : choose an object to apply on your characters or the characters of your opponent.

        """)
}

func play() {
    initPlayer1()
    initPlayer2()
}


func intro() {
    entrance()
    passDialogue()
    screenTitle()
    chooseMenu()
    }
