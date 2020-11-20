//Classe Mère

class Character {
    var name: String = ""
    var life: Int = 0
    var weapon: Weapon = Weapon(name: "", type: "", damage: 0)
    var heal: Int = 0
    
     
    init(name: String, life: Int, weapon: Weapon, heal: Int) {
        self.name = name
        self.life = life
        self.weapon = weapon
        self.heal = heal
        }
}

// Classe Héritées

    //SORA
class KeyGuardian: Character {
    init() {
        let name = "Sora"
        let life = 200
        let weapon = Weapon(name: "Ultima", type: "Keyblade", damage: 30)
        let heal = 40
        super.init(name: name, life: life, weapon: weapon, heal: heal)
        
    }
}
    //DONALD
class Dps: Character {
    init() {
        let name = "Donald"
        let life = 250
        let weapon = Weapon(name: "Royal Wand", type: "Wand", damage: 25)
        let heal = 40
        super.init(name: name, life: life, weapon: weapon, heal: heal)
        
    }
}
    //DINGO
class Tank: Character {
    init() {
        let name = "Dingo"
        let life = 350
        let weapon = Weapon(name: "Royal Shield", type: "Shield", damage: 20)
        let heal = 0
        super.init(name: name, life: life, weapon: weapon, heal: heal)
        
    }
}
