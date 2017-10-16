//
//  Robot.swift
//  RobotIntroPOO
//
//  Created by Pro on 16/10/2017.
//  Copyright © 2017 Mylene. All rights reserved.
//

import Foundation

//Creation de la classe Robot
class Robot {
    var name: String
    var life: Int = 100
    var runSpeed: Int = 3
    var position = (X: 0, Y: 0)
    
    init(name: String) {
        self.name = name
    }
    
}



