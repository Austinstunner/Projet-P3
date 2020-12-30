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

    //definition des variable qui contient joueur 1 et 2 et celle qui créer la notion d'aleatoire sur 100
    var players: [Player] = [game.player1, game.player2]
    var rnd = Int.random(in: 1..<100)
    
    //definition of the function who select a random weapon in the weapon's list
    
    func treasureGift() -> Weapon {
    let gift = Int.random(in: 1..<list.count)
        return list[gift]
 }
    // Choose random player
    
    func rndplayer() -> Player {
        let choose = Int.random(in: 1..<players.count)
        return players[choose]
    }
    
//-- definition of the function who's choosing randomly content for random player
    
    func getGift() -> Character {
        let getGifts = Int.random(in: 1..<rndplayer().characters.count) //variable getGifts qui selectionnne un personnage aleatoire entre les deux player
    
        if rnd > 50 {
            print("A chest appear !")
            let ch = Treasure()
            getGift().weapon = ch.treasureGift()
            print("\(getGift().name) found \(getGift().weapon) in the chest ! ")
            }
        return rndplayer().characters[getGifts]
    }
}
