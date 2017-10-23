//
//  main.swift
//  RobotIntroPOO
//
//  Created by Pro on 16/10/2017.
//  Copyright © 2017 Mylene. All rights reserved.
//

import Foundation

//Creation de notre premier robot
var robot1 = Robot(name: "RT-56/X")

//Creation de notre deuxième robot
var robot2 = Robot(name: "R2-D2")

//Creation de notre troisième robot
var robot3 = Robot(name: "SCORPION")

//Creation de notre quatrième robot
var robot4 = Robot(name: "BB-8")


//Creation d'un tableau contenant nos 4 robots
var teamDeRobots = [robot1, robot2, robot3, robot4]

for robot in teamDeRobots {
    print(robot.sePresenter())
    
}

robot1.seDeplacer(direction: .gauche, vitesse: 10)
robot1.sePresenter()

robot2.seDeplacer(direction: .droite, vitesse: 1)
robot2.sePresenter()






