//
//  Keyblade Wielder.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

import Foundation

//----------------------------------------------------\\
//----------- DEFINITION DE L'HERITAGE SORA -----------\\
//------------------------------------------------------\\

class KeybladeWielder: Character {
    init() {
        super.init(name: "", life: 125, weapon: Keyblade(), heal: 18)
    }
}
