//
//  Player.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

class Player {
    var nameOfTheTeam: String
    var side: Side
    
    init(nameOfTheTeam: String, side: Side) {
        self.nameOfTheTeam = nameOfTheTeam
        self.side = side
    }
}
