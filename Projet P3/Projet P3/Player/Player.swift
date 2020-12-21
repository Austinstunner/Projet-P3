//
//  Player.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 22/11/2020.
//

//---------------------------------\\
//-----------CLASS PLAYER-----------\\
//-----------------------------------\\

class Player {
    var nameOfTheTeam: String
    var characters = [Character]()
    
    init(nameOfTheTeam: String) {
        self.nameOfTheTeam = nameOfTheTeam
    }
    
    func selectedCharacter(target: Player) -> Character {
            print("")
            print("""
                    Select a character ❕

                    """)
            
            // Listing Characters available : The display of the character's life evolves with the game
            for (index, character) in characters.enumerated() {
                let currentLife = character.life
                
                if currentLife == 100 {
                    print("[\(index)] ⚜️ \(character.name) has \(character.life) PV ")
                } else if currentLife >= 75 {
                    print("[\(index)] ⚜️ \(character.name) has \(character.life) PV ")
                } else if currentLife >= 50 {
                    print("[\(index)] ⚜️ \(character.name) has \(character.life) PV ")
                } else if currentLife >= 25 {
                    print("[\(index)] ⚜️ \(character.name) has \(character.life) PV ")
                } else if currentLife >= 0 && !character.isDead() {
                    print("[\(index)] ⚜️ \(character.name) has \(character.life) PV ")
                } else {
                    print("❌ \(character.name) has left this world ☠️")
                }
            }
            
            if let value = readLine(), let choice = Int(value), choice <= characters.count - 1 {
                let selectACharacter = characters[choice]
                print("""

                ▶️ \(selectACharacter.name) was selected ! \n
                """)
                if selectACharacter.isDead() {
                    print("\(selectACharacter.name) is dead.. choose another one ! ")
                    return selectedCharacter(target: target)
                }
                return selectACharacter
            } else {
                return selectedCharacter(target: target)
            }
        }
    
    func fight(target: Player) {
            let currentPlayer = selectedCharacter(target: target)
            
                print("""
                                              🚩\(currentPlayer.name)🚩
                            
                                    [1] Attack           [2] Heal
                    
                    Other keys makes you return to the character's selecting menu.

                    """)
                
                if let options = readLine() {
                    switch options {
                    case "1":
                       
                        let currentTarget = selectedTarget(target: target)
                        currentPlayer.attack(target: currentTarget, weapon: currentPlayer.weapon)
                    case "2":
                   
                        let currentTarget = selectedTarget(target: self)
                        currentPlayer.healing(partner: currentPlayer, target: currentTarget, weapon: currentPlayer.weapon)
                    default:
                        print("""
                        I don't understand, repeat please ?
                        """)
                        fight(target: target)
                    }
                }
             else {
                let currentTarget = selectedTarget(target: target)
                currentPlayer.attack(target: currentTarget, weapon: currentPlayer.weapon)
            }
        }

func selectedTarget(target: Player) -> Character {
        print("")
        print("""
            Select your opponent
            
            """)
        
        for (index, character) in target.characters.enumerated() {
            if character.isDead() {
                print("\(character.name) can't be a target, he is dead !")
            } else {
                print("➡️ \(index) \(character.name) has \(character.life) PV." )
            }
        }
        
        if let value = readLine(), let choice = Int(value), choice <= target.characters.count - 1 {
            let selectATarget = target.characters[choice]
            print("▶️ \(selectATarget.name) was selected !")
            print("")
            if selectATarget.isDead() {
                print("Hum ! Sorry but he's already dead, please choose another one !")
                return selectedTarget(target: target)
            }
            return selectATarget
        } else {
            print("You must choose ! ")
            return selectedTarget(target: target)
        }
    }
    func hasLoose() -> Bool {
            if characters[0].isDead() && characters[1].isDead() && characters[2].isDead() {
                return true
            } else {
                return false
            }
        }
}

