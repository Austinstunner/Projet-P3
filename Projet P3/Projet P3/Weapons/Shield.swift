//
//  Royal Shield.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

import Foundation


//-- Class Shield inherited from the Class Weapon

final class Shield: Weapon {
    init() {
        super.init(name: "Classic Shield", type: "Shield", damage: 31, definition: "a solid shield marked by the king's insign")
    }
}
