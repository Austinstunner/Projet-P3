// Création de la classe Mère

class Race {
    var raceName: String
    var powerName: String
    var power: Int
    
    init(raceName: String, powerName: String, power: Int) {
        self.raceName = raceName
        self.powerName = powerName
        self.power = power
    }
}

// Création des classes Héritées

class Orc: Race {
    init() {
        let raceName = "Orc"
        let powerName = "Berzerk"
        let power = 80
        
        super.init(raceName: raceName, powerName: powerName, power: power)
    }
}

class NightElf: Race {
    init() {
        let raceName = "NightElf"
        let powerName = "Sneak Attaque"
        let power = 90
        
        super.init(raceName: raceName, powerName: powerName, power: power)
    }
}

class Tauren: Race {
    init() {
        let raceName = "Tauren"
        let powerName = "Pray"
        let power = 70
        
        super.init(raceName: raceName, powerName: powerName, power: power)
    }
}

//Instance des Classes

var orc = Orc()
var nightElf = NightElf()
var tauren = Tauren()

