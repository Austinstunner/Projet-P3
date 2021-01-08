//
//  Character+Healing.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 31/12/2020.
//

import Foundation

extension Character {
    
    //-- Function heal of characters, with target.
    
    func healing(partner: Character, target: Character, weapon: Weapon) {
        partner.life += self.heal
        if partner.life >= 100 {
            partner.life = 100
            print("❤️✨\(partner.name) healed \(target.name) and he is in top form !")
        } else {
            print("❤️✨\(partner.name) healed \(target.name) for \(self.heal) PV ! ")
        }
    }
}
