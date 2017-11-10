//
//  main.swift
//  RobotIntroPOO
//
//  Created by Pro on 16/10/2017.
//  Copyright © 2017 Mylene. All rights reserved.
//

import Foundation

//Creation de notre premier robot
var robot1 = Robot(name: "Jean", arme: Arme(name: "Laser", damage: 10))

//Creation de notre deuxième robot
var robot2 = Robot(name: "Pierre", life: 100, runSpeed: 2, position: (X: 2, Y: -1), arme: Arme(name: "Prout", damage: 5))


//Creation d'un tableau contenant nos 4 robots
var teamDeRobots = [robot1, robot2]


//boucle pour que tous les robots dans le tableau se présentent à tour de rôle (ils sont statiques)
for robot in teamDeRobots {
print(robot.sePresenter())
    
}


//notre robot unique : initialisation de son nom, de sa vie et de sa position.
var unrobot = Robot(name: "Blabla", life: 10, runSpeed: 3, position: (X: 3, Y: 2), arme: Arme(name: "arme1", damage: 20))
var unAutreRobot = Robot(name: "lalala", life: 12, runSpeed: 3, position: (X: 1, Y: 2), arme: Epee())


//le robot se présente
unrobot.sePresenter()

//le robot se déplace
unrobot.seDeplacer()

//un nouveau robot qui se déplace aleatoirement et qui se présente
var nouveauRobot = Robot(name: "Camembert", arme: Arme(name: "Cheedar", damage: 2))
nouveauRobot.seDeplacer()
nouveauRobot.sePresenter()
nouveauRobot.seDeplacer()
nouveauRobot.sePresenter()
nouveauRobot.seDeplacer()
nouveauRobot.sePresenter()
nouveauRobot.seDeplacer()
nouveauRobot.sePresenter()

//un autre robot avec initialisation de l'arme  (nom et dégats)
var encoreUnRobot = Robot(name: "jeje", arme: Arme(name: "arme66", damage: 20))
encoreUnRobot.seDeplacer()
encoreUnRobot.sePresenter()

//un autre robot que l'on nomme et qu'on équipe d'une arme déjà paramétré 
var RobotRobot = Robot(name: "Robototot", arme: Epee())
RobotRobot.seDeplacer()
RobotRobot.sePresenter()











