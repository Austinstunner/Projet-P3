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
class Treasure {
    var list: [Weapon] = [Weapon(name: "Bionic Sword", type: "Sword", damage: 20, definition: " A bionic sword full of technology"), Weapon(name: "Thunder", type: "Magic", damage: 20, definition: "A lighning bolt straight from the god of thunder"), Weapon(name: "Fireball", type: "Magic", damage: 20, definition: "An incandescent Fireball"), Weapon(name: "Storm", type: "Magic", damage: 20, definition: "A powerfull Storm")]

    var rnd = Int.random(in: 1..<100)
    
    func treasureGift() -> Weapon {
    let gift = Int.random(in: 1..<list.count)
        return list[gift]
 }
    
//-- definition of the function who's choosing randomly content for Player 1
    func getGiftToP1() -> Character {
        
        let getGiftP1 = Int.random(in: 1..<player1.characters.count)
       
        if rnd > 50 {
            let ch = Treasure()
            getGiftToP1().weapon = ch.treasureGift()
            }
        return player1.characters[getGiftP1]
    }
    
    
//-- definition of the function who's choosing randomly content for Player 2
    
    func getGiftToP2() -> Character {
        
        let getGiftP2 = Int.random(in: 1..<player2.characters.count)
       
        if rnd > 50 {
            let ch = Treasure()
            getGiftToP2().weapon = ch.treasureGift()
            }
        return player1.characters[getGiftP2]
    }
}

let treasure = Treasure()
