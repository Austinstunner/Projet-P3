//
//  Dingo.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

import Foundation

class Dingo: Character {
    init() {
        let name = "Dingo"
        let life = 350
        let weapon = Weapon(name: "Royal Shield", type: "Shield", damage: 20)
        let heal = 0
        super.init(name: name, life: life, weapon: weapon, heal: heal)
        
    }
}
