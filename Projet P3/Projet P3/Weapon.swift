// Création de la classe Mère

class Weapon {
    var name: String
    var type: String
    var damage: Int
    var heal: Int
    
    init(name: String, type: String, damage: Int, heal: Int) {
        
    self.name = name
    self.type = type
    self.damage = damage
    self.heal = heal
        
    }
}

// Création des classes Héritées

class Staff: Weapon {
    init() {
        let name = "Stick of Death"
        let type = "Staff"
        let damage = 80
        let heal = 50
        
        super.init(name: name, type: type, damage: damage, heal: heal)
    }
}

class Dagger: Weapon {
    init() {
        let name = "Cutter"
        let type = "Dagger"
        let damage = 70
        let heal = 0
        super.init(name: name, type: type, damage: damage, heal: heal)
    }
}

class Axe: Weapon {
    init() {
        let name = "Golden-Axe"
        let type = "Axe"
        let damage = 90
        let heal = 0
        super.init(name: name, type: type, damage: damage, heal: heal)
    }
}

//Instances des Classes

var staff = Staff()
var dagger = Dagger()
var axe = Axe()
