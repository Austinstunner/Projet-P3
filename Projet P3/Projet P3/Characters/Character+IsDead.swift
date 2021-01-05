//
//  Character+IsDead.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 31/12/2020.
//

import Foundation

extension Character {
    
    func isDead() -> Bool {
        return life <= 0
    }
}
