//
//  Character+Attack.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 31/12/2020.
//

import Foundation

extension Character {
   
    func attack(target: Character, weapon: Weapon) {
           target.life -= weapon.damage
           print("""
            ⚔️ \(self.name) remove \(weapon.damage) of \(target.name)'s PV !

            """)
       }
}
