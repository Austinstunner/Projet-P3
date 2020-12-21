//
//  Royal Shield.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

import Foundation

//------------------------------------------------------------\\
//----------- DEFINITION DE L'HERITAGE ROYAL SHIELD -----------\\
//--------------------------------------------------------------\\

class Shield: Weapon {
    init() {
        super.init(name: "Classic Shield", type: "Shield", damage: 25, definition: "a solid shield marked by the king's insign")
    }
}
