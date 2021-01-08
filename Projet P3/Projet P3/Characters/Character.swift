//
//  Character.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

import Foundation

//-- Class Character

class Character {
    var name: String = ""
    var life: Int = 0
    var weapon: Weapon = Weapon(name: "", type: "", damage: 0, definition: "")
    var heal: Int = 0
    
    
    init(name: String, life: Int, weapon: Weapon, heal: Int) {
        self.name = name
        self.life = life
        self.weapon = weapon
        self.heal = heal
    }
}


