//
//  Player+CreateNameOfTheTeam.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 30/12/2020.
//

import Foundation

extension Player {
    
    func createNameOfTheTeam() {
            print("""
         _______________________________
        ⎮Choose the name of your team : ⎮
         -------------------------------

        """)
        nameOfTheTeam = readLine()!
    }
}
