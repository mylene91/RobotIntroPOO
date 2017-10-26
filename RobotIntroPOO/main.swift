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


//boucle pour que tous les robots dans le tableau se présentent à tour de rôle (ils sont statiques)
for robot in teamDeRobots {
print(robot.sePresenter())
    
}


//notre robot unique : initialisation de son nom, de sa vie et de sa position.
var unrobot = RobotUnique(name: "Blabla", life: 10, position: (X: 3, Y: 2))

//le robot se présente
unrobot.sePresenter()

//le robot se déplace
unrobot.seDeplacer(direction: .gauche)







