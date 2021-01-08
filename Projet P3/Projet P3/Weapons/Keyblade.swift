//
//  Ultima.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

import Foundation

//-- Class Keyblade inherited from the Class Weapon

final class Keyblade: Weapon {
    init() {
        super.init(name: "Classic Keyblade", type: "Keyblade", damage: 30, definition: "a beautiful and powerfull Keyblade")
    }
}
