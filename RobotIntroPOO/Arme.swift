//
//  Arme.swift
//  RobotIntroPOO
//
//  Created by Mylène Greneron on 18/03/2018.
//  Copyright © 2018 Mylene. All rights reserved.
//

import Foundation

//Une classe arme pour équiper les robots
class Arme {
    var name : String
    var damage : Int
    
    init (name : String, damage : Int){
        self.name = name
        self.damage = damage
    }
}

//classe épée déjà paramétrée
class Epee: Arme {
    init() {
        super.init(name: "epée1", damage: 10)
    }
}
