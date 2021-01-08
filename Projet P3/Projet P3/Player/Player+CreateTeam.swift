//
//  Player+CreateTeam.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/12/2020.
//

import Foundation

extension Player {
    
    //-- Function who's create two teams with three characters
    
    func createTeams() {
        print("""
                         
                        1️⃣ ⚜️ Select the first character of your team ⚜️
                         
            """)
        createCharacter()
        print("""

            Ok, what's his name ?

            """)
        characters[0].name = readLine()!
        print("""
                         
                        2️⃣ ⚜️ Select the second character of your team ⚜️
                         
            """)
        
        createCharacter()
        print("""

            And what's his name ?

            """)
        
        characters[1].name = readLine()!
        while characters[1].name == characters[0].name {
            print(" this name is already taken, choose another one !")
            characters[1].name = readLine()!
        }
        
        print("""
                        
                        3️⃣ ⚜️ Select the third character of your team ⚜️
                       
            """)
        createCharacter()
        print("""

            What's his name ?

            """)
        characters[2].name = readLine()!
        while characters[2].name == characters[1].name || characters[2].name == characters[0].name {
            print("this name is already taken, choose another one !")
            characters[2].name = readLine()!
        }
    }
}

