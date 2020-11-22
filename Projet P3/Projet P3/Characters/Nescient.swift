//
//  Nescient.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

import Foundation

class Nescient: Character {
    init() {
        let name = "Nescient"
        let life = 350
        let weapon = Weapon(name: "Sharp claws", type: "Claws", damage: 0)
        let heal = 0
        super.init(name: name, life: life, weapon: weapon, heal: heal)
        
    }
}
