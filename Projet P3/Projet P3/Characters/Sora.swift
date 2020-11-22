//
//  Sora.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

import Foundation

class Sora: Character {
    init() {
        let name = "Sora"
        let life = 200
        let weapon = Weapon(name: "Ultima", type: "Keyblade", damage: 30)
        let heal = 40
        super.init(name: name, life: life, weapon: weapon, heal: heal)
        
    }
}
