//
//  Weapon.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

import Foundation

class Weapon {
    var name: String = ""
    var type: String = ""
    var damage: Int = 0
    
    init(name: String, type : String, damage: Int) {
        self.name = name
        self.type = type
        self.damage = damage
    }
}
