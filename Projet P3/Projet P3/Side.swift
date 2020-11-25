//
//  Side.swift
//  Projet P3
//
//  Created by Anthony TUFFERY on 23/11/2020.
//

import Foundation

class Side {
    var sora = Sora()
    var donald = Donald()
    var dingo = Dingo()
    var xehanort = Xehanort()
    var nescient1 = Nescient()
    var nescient2 = Nescient()
    
    init(sora: Sora, donald: Donald, dingo: Dingo, xehanort: Xehanort, nescient1: Nescient, nescient2: Nescient) {
        self.sora = sora
        self.donald = donald
        self.dingo = dingo
        self.xehanort = xehanort
        self.nescient1 = nescient1
        self.nescient2 = nescient2
    }
}

class Goodside: Side {
    
    init() {
        let sora = Sora()
        let donald = Donald()
        let dingo = Dingo()
        super.init(sora: sora, donald: donald, dingo: dingo, xehanort: Xehanort(), nescient1: Nescient(), nescient2: Nescient())       }
}

class Badside: Side {
    
    init() {
    let xehanort = Xehanort()
    let nescient1 = Nescient()
    let nescient2 = Nescient()
    super.init(sora: Sora(), donald: Donald(), dingo: Dingo(), xehanort: xehanort, nescient1: nescient1, nescient2: nescient2)
    }
}
