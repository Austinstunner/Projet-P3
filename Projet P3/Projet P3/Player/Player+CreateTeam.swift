//
//  Player+CreateTeam.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/12/2020.
//

import Foundation

extension Player {
    
    func createTeams() {
        print("""
                         __________________________________________
                        ⎮Select the first character of your team : ⎮
                         ------------------------------------------
            """)
        createCharacter()
        print("""

            And what's his name ?
            """)
        characters[0].name = readLine()!
        print("""
                         ___________________________________________
                        ⎮Select the second character of your team : ⎮
                         -------------------------------------------
            """)
        
        createCharacter()
        print("""

            And what's his name ?
            """)
        
        characters[1].name = readLine()!
        if characters[1].name == characters[0].name {
            print(" this name is already taken, choose another one !")
            characters[1].name = readLine()!
        }
        
        print("""
                         __________________________________________
                        ⎮Select the third character of your team : ⎮
                         ------------------------------------------
            """)
        createCharacter()
        print("""

            And what's his name ?
            """)
        characters[2].name = readLine()!
        if characters[2].name == characters[0].name || characters[2].name == characters[1].name{
            print(" this name is already taken, choose another one !")
            characters[2].name = readLine()!
        }
    }
}
