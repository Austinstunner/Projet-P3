//
//  Treasure.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

//----------------------------------------\\
//----------- TREASURE FUNCTION -----------\\
//------------------------------------------\\

import Foundation

//-- definition of treasure's content and the function who choise random content
internal class Treasure {
    var randomOn100 = arc4random_uniform(100)
    var list: [Weapon] = [Weapon(name: "Bionic Sword", type: "Sword", damage: 20, definition: " A bionic sword full of technology"),
                                Weapon(name: "Thunder", type: "Magic", damage: 19, definition: "A lighning bolt straight from the god of thunder"),
                                Weapon(name: "Fireball", type: "Magic", damage: 20, definition: "An incandescent Fireball"),
                                Weapon(name: "Storm", type: "Magic", damage: 18, definition: "A powerfull Storm"),
                                Weapon(name: "Oathkeeper", type: "Keyblade", damage: 22, definition: "A Keyblade that will guard you from many hurts. Its powers help accelerate your growth"),
                                Weapon(name: "Oblivion", type: "Keyblade", damage: 26, definition: "A Keyblade that rewards wielders who share its hurt. Its powers will draw out your full potential"),
                                Weapon(name: "Way to the Damn", type: "Keyblade", damage: 24, definition: "A keybalde with an angel wing"),
                                Weapon(name: "StormFall", type: "Keyblade", damage: 18, definition: "A well-balanced Keyblade"),
                                Weapon(name: "Old Stick", type: "Stick", damage: 3, definition: "A useless old wood stick")]
    
    func chooseWeaponRandomly() -> Weapon {
    let gift = Int.random(in: 0..<list.count)
        return list[gift]
   
    }
}

