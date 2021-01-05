//
//  Player+HasLoose.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 30/12/2020.
//

import Foundation

extension Player {
    //-- define the end of a team
   internal func hasLoose() -> Bool {
            if characters[0].isDead() && characters[1].isDead() && characters[2].isDead() {
                return true
            } else {
                return false
            }
        }
}
