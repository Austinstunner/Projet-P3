//
//  Keyblade Wielder.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

import Foundation

//-- Class KeybladeWielder inherited from the Class Character

final class KeybladeWielder: Character {
    init() {
        super.init(name: "", life: 125, weapon: Keyblade(), heal: 25)
    }
}
