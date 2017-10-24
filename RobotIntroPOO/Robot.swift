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
    
    enum Orientation {
        case haut, bas, droite, gauche
    }
    
    var name: String
    var life: Int = 100
    var runSpeed: Int = 3
    var position = (X: 0, Y: 0)
    
    init(name: String) {
        self.name = name
    }
    
    
    func sePresenter() {
        print("Bonjour, je m'appelle \(name). J'ai \(life) points de vie. Je me déplace à \(runSpeed) cases par seconde. Je suis à la case de coordonnées \(position)")
    }

    func seDeplacer(direction: Orientation, vitesse: Int) {
        var vitesseDeplacement: Int
        if vitesse > runSpeed {
            vitesseDeplacement = runSpeed
        } else {
            vitesseDeplacement = vitesse
        }
        switch direction {
        case .haut:
            position.Y += vitesseDeplacement
        case .bas:
            position.Y -= vitesseDeplacement
        case .droite:
            position.X += vitesseDeplacement
        case .gauche:
            position.X -= vitesseDeplacement
        }
        
    }
    
    func seDeplacer(direction: Orientation) {
        let vitesseDeplacement: Int = seDeplacerAleatoirement()
        
        switch direction {
        case .haut:
            position.Y += vitesseDeplacement
        case .bas:
            position.Y -= vitesseDeplacement
        case .droite:
            position.X += vitesseDeplacement
        case .gauche:
            position.X -= vitesseDeplacement
        }
        
    }
    
    
    func seDeplacerAleatoirement() -> Int {
        return Int(arc4random_uniform(UInt32(runSpeed + 1)))
        
    }
    
}

class RobotUnique {
    
    enum Orientation {
        case haut, bas, droite, gauche
    }
    
    var name: String
    var life: Int
    var runSpeed: Int = 3
    var position: (X: Int, Y: Int)
    
    init(name: String, life: Int, position: (X: Int, Y: Int)) {
        self.name = name
        self.life = life
        self.position = position
    }
    


    
    func sePresenter() {
        print("Bonjour, je m'appelle \(name). J'ai \(life) points de vie. Je me déplace à \(runSpeed) cases par seconde. Je suis à la case de coordonnées \(position)")
    }
    
    func seDeplacer(direction: Orientation, vitesse: Int) {
        var vitesseDeplacement: Int
        if vitesse > runSpeed {
            vitesseDeplacement = runSpeed
        } else {
            vitesseDeplacement = vitesse
        }
        switch direction {
        case .haut:
            position.Y += vitesseDeplacement
        case .bas:
            position.Y -= vitesseDeplacement
        case .droite:
            position.X += vitesseDeplacement
        case .gauche:
            position.X -= vitesseDeplacement
        }
        
    }
    
    func seDeplacer(direction: Orientation) {
        let vitesseDeplacement: Int = seDeplacerAleatoirement()
        
        switch direction {
        case .haut:
            position.Y += vitesseDeplacement
        case .bas:
            position.Y -= vitesseDeplacement
        case .droite:
            position.X += vitesseDeplacement
        case .gauche:
            position.X -= vitesseDeplacement
            print("Je me suis déplacé de \(vitesseDeplacement) cases vers la gauche ma nouvelle coordonnée x = \(position.X).")
        }
        
    }
    
    
    func seDeplacerAleatoirement() -> Int {
        return Int(arc4random_uniform(UInt32(runSpeed + 1)))
        
    }
    
}



       // coupsdedeplacement demandé et initialisé dans le fichiermain.swift
        //seDeplacer(direction: Robot.Orientation, vitesse: Int)

 
    
    
    
    
    
    
    





