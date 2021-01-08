//
//  Dingo.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

import Foundation


//-- Class KeybladeWielder inherited from the Class Character

final class RoyalDefender: Character {
    init() {
        super.init(name: "", life: 150, weapon: Shield(), heal: 10)
    }
}
