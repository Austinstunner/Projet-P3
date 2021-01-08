//
//  Player+CreateNameOfTheTeam.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 30/12/2020.
//

import Foundation

extension Player {
    
    //-- Function who's create the name of player's team
    
    func createNameOfTheTeam() {
        print("""
         
        ⚜️ Choose the name of your team ⚜️
         

        """)
        nameOfTheTeam = readLine()!
    }
}
