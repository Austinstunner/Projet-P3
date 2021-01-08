//
//  Player+HasLoose.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 30/12/2020.
//

import Foundation

extension Player {
    
    //-- Function that return a boolean in terms of all the characters of a team is unvailable. 
    
    func hasLoose() -> Bool {
        if characters[0].isDead() && characters[1].isDead() && characters[2].isDead() {
            return true
        } else {
            return false
        }
    }
}
