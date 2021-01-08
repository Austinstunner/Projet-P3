//
//  Royal Wand.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

import Foundation


//-- Class Wand inherited from the Class Weapon

final class Wand: Weapon {
    init() {
        super.init(name: "Classic Wand", type: "Wand", damage: 33, definition: "a magic wand marked by the king's insign")
    }
}
