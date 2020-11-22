//
//  Donald.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

import Foundation

class Donald: Character {
    init() {
        let name = "Donald"
        let life = 250
        let weapon = Weapon(name: "Royal Wand", type: "Wand", damage: 25)
        let heal = 40
        super.init(name: name, life: life, weapon: weapon, heal: heal)
        
    }
}
