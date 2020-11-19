//Création de la classe mère

class Character {
    
    var name: String
    var life: Int
    var race: String
    var weapon: Int
    var heal: Bool
    
    init(name: String, life: Int, race: String, weapon: Int, heal: Bool) {
    self.name = name
    self.life = life
    self.race = race
    self.weapon = weapon
    self.heal = heal
    }
    
    func attack() {
    }
    
    func healthUpdate() {
    }
    
    func healing() {
    
    }
    
    func powerHealing() {
    }
    
    func powerDamage() {
    }
}

// Création des classes Héritées

class Thrall : Character {

    init() {
        let name = ""
        let life = 450
        let race = orc.raceName
        let weapon = staff.damage
        let heal = true
        
        
        super.init(name: name, life: life, race: race, weapon: weapon, heal: heal)
       
    }
    override func attack() {
            
        }
    override func healthUpdate() {
            print("You have \(life) PV left ! ")
        }
    override func healing()  {
        let thrallLife: Int = thrall.life
        let healing: Int = staff.heal
        thrallLife + healing
        }
    override func powerDamage() {
        
            
        }
}


class Sylvanas : Character {
    
    init() {
        let name = ""
        let life = 550
        let race = nightElf.raceName
        let weapon = dagger.damage
        let heal = false
        super.init(name: name, life: life, race: race, weapon: weapon, heal: heal)
    }
    
    override func attack() {
        
    }
    override func healthUpdate() {
        
    }
    override func powerDamage() {
        
    }

}

class Bain : Character {
    init() {
        let name = ""
        let life = 500
        let race = tauren.raceName
        let weapon = axe.damage
        let heal = false
        
        super.init(name: name, life: life, race: race, weapon: weapon, heal: heal)
    }
 
        
    override func attack() {
            
        }
    override func healthUpdate() {
            
        }
    override func powerHealing() {
            
        }
    }

// Instances des Classes

var thrall = Thrall()
var sylvanas = Sylvanas()
var bain = Bain ()


