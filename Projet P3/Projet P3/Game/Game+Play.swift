//
//  PlayingMenu.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 25/11/2020.
//

import Foundation

extension Game {
//-----------------------------------\\
//----------- PLAYING MENU -----------\\
//-------------------------------------\\

func play() {
   print("""



    - Jiminy Cricket : My king, i fear that Xehanort's army was too big for Sora, Donald and Goofy.. We have to send another
    squad as reinforcement
    - King Mickey : Hmm.. I see, were you thinking of a specific squad my dear Jiminy ?
    - Jiminy Cricket : Yes ! And i have ever call them, they're waiting behind the door.
    - King Mickey : Good, send the folks back in.
    - Jiminy Cricket : Sure.

    """)
    
    passDialogue()
    
    print("""
    - King Mickey : Hi Soldiers! Today, i send my elite team to fight the evil Xehanort in order to stop him to get
    ahold of the Kingdom Heart. I need your services for cover their backs.
    - King Mickey : Oh, i touth.. i'm sorry, precipitation makes me forget my manners ! i forgot to ask..
    What's the name of your squad ?

    Player 1,

    """)
    
    player1.createNameOfTheTeam()
    
    print("""

    - King Mickey : Well ! Thanks to help us \(player1.nameOfTheTeam) !
    - Jiminy Cricket : That's right my King, i didn't bother to do some presentations ! Here are ... :

    """)

    player1.createTeams()
    passDialogue()
    
    print("""
    - King Mickey : Well ! So now, i send you on the Necropolis of keyblades for helping our friends !
    - Jiminy Cricket : just before you go be aware, i've heard that a squad name ...

    Player 2,
    """)
    
    player2.createNameOfTheTeam()
    
    print("""

    - Jiminy Cricket : ... \(player2.nameOfTheTeam) were sent by the ennemies.
    It is composed by ...

    """)
    
    player2.createTeams()
    passDialogue()
    
    print("""

    - Jiminy Cricket :  ...\(player2.characters[0].name), \(player2.characters[1].name), \(player2.characters[2].name).
    They are ruthless adversaries !
    - King Mickey : Good luck boys !

    """)
    
    passDialogue()
    
    print("""
        
    \(player1.characters[0].name), \(player1.characters[1].name), \(player1.characters[2].name) pointing right to the armory. all took their belongings.
    ______________________________________________

    """)
    
    passDialogue()
    runGame()
}
}
