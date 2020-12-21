//
//  Xehanort.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

import Foundation

//--------------------------------------------------------\\
//----------- DEFINITION DE L'HERITAGE XEHANORT -----------\\
//----------------------------------------------------------\\

class Xehanort: Character {
    init() {
        let name = "Xehanort"
        let life = 350
        let weapon = Weapon(name: "Scrutatrice", type: "Keyblade", damage: 40)
        let heal = 30
        super.init(name: name, life: life, weapon: weapon, heal: heal)
        
    }
}
