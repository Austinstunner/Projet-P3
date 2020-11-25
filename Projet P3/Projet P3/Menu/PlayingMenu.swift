//
//  PlayingMenu.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 25/11/2020.
//

import Foundation

var goodSide = Player(nameOfTheTeam: "", side: Goodside())
var badSide = Player(nameOfTheTeam: "", side: Badside())


func play() {
    print("""
                   Player 1, select your side !

            [1]Goodside                    [2]Badside

        """)
    if let choise = readLine() {
        switch choise {
        case "1":
            print("""
            Goodside choosen !
        select the name of your team !

""")
            goodSide.nameOfTheTeam = readLine()!
        case "2":
            print("""
            Badside choosen !
        select the name of your team !
""")
            badSide.nameOfTheTeam = readLine()!
        default:
            play()
        }
    }
    
    print("""
                Player 2 Select the other side automaticaly.
                        Give a name to your team !
        """)
    if goodSide.nameOfTheTeam == "" {
        goodSide.nameOfTheTeam = readLine()!
    }
    else {
        badSide.nameOfTheTeam = readLine()!
    }
    print("""
        
        ••CASTLE OF THE KING MICKEY - In the Throne Room••

        King Mickey : " Sora, you are the only person in this world able to defeat Xehanort ! "

        Sora : " Uhh.. ? How can you be sure ?

        King Mickey : " Find the X-Blade before him, this artefact is the key to re-establish peace of all the world ! "

        Sora : " I promise to do my best ! Donald, Goofy.. let's save the kingdom ! "

        Donald, Dingo : " Yeah ! "
        
        King Mickey open a portal. Sora and his friends jump into..
        
        ••FREEZING NIGHT - In the Keyblade Necropolis••
        
        Sora : " Where are we ?! "
        
        Donald : " BrrrBrrrBrrr, don't know but i can't feel my fingers anymore because of the cold. "
        
        Goofy : " I think that's where the first war for the Kingdom Hearts happend.
                At that time, a thousand members of light Keyblade and Darkness Keyblade clashed for the X-Blade. "
        
        
        
        """)
    
}
// si le nom de l'équipe goodSide est égale à "" alors donne lui un nom sinon donne un nom à badSide
// ce qui revient a dire que si le nom de goodSide est déjà prit alors il devra renseigner automatiquement le nom de badSide et inversement
