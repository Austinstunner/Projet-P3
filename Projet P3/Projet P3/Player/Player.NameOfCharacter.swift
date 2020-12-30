//
//  Player.NameOfCharacter.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 30/12/2020.
//

import Foundation

extension Player {
    
    func nameOfCharacter() {
        print("""

            And what's his name ?
            """)
        characters[0].name = readLine()!
    }
}
