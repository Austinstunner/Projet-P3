//
//  Character.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

import Foundation

//--------------------------------------\\
//----------- CLASS CHARACTER -----------\\
//----------------------------------------\\

class Character {
    var name: String = ""
    var life: Int = 0
    var weapon: Weapon = Weapon(name: "", type: "", damage: 0, definition: "")
    var heal: Int = 0
    
    
    init(name: String, life: Int, weapon: Weapon, heal: Int) {
        self.name = name
        self.life = life
        self.weapon = weapon
        self.heal = heal
        }
    func isDead() -> Bool {
        return life <= 0
    }
    
    func attack(target: Character, weapon: Weapon) {
           target.life -= weapon.damage
           print("""
            ⚔️ \(self.name) remove \(weapon.damage) of \(target.name)'s PV !

            """)
       }
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
   
