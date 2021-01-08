//
//  Character+IsDead.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 31/12/2020.
//

import Foundation

extension Character {
    
    //-- Function that return a boolean state for a character based on his life
    
    func isDead() -> Bool {
        return life <= 0
    }
}
