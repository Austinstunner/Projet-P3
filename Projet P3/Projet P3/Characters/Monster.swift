//
//  Nescient.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

import Foundation

//-- Class Monster inherited from the Class Character

final class Monster: Character {
    init() {
        super.init(name: "", life: 110, weapon: PhysicalAttack(), heal: 10)
    }
}
