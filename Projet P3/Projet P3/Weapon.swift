//Classe Mère

class Weapon {
    var name: String = ""
    var type: String = ""
    var damage: Int = 0
    
    init(name: String, type : String, damage: Int) {
        self.name = name
        self.type = type
        self.damage = damage
    }
}
