//
//  Physical Attack.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

import Foundation

//----------------------------------------------------\\
//-----------  ----------\\
//------------------------------------------------------\\

final class PhysicalAttack: Weapon {
    init() {
        super.init(name: "Claws", type: "Physical attack", damage: 35, definition: "claws sharper than a knife")
    }
}
