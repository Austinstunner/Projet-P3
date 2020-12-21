//
//  Weapon.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

import Foundation

//----------------------------------------------------------\\
//----------- DEFINITION DE LA CLASSE MÈRE WEAPON -----------\\
//------------------------------------------------------------\\

class Weapon {
    var name: String = ""
    var type: String = ""
    var damage: Int = 0
    var definition: String = ""
    
    init(name: String, type : String, damage: Int, definition: String) {
        self.name = name
        self.type = type
        self.damage = damage
        self.definition = definition
    }
}
