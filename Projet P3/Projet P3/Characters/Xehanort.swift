//
//  Xehanort.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

import Foundation

class Xehanort: Character {
    init() {
        let name = "Xehanort"
        let life = 350
        let weapon = Weapon(name: "Scrutatrice", type: "Keyblade", damage: 0)
        let heal = 0
        super.init(name: name, life: life, weapon: weapon, heal: heal)
        
    }
}
