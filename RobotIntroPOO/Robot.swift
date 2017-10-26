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
    
    
    //enum des orientations que peut prendre le robot
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
    
    //fonction pour que le robot se présente
    func sePresenter() {
        print("Bonjour, je m'appelle \(name). J'ai \(life) points de vie. Je me déplace à \(runSpeed) cases par seconde. Je suis à la case de coordonnées \(position)")
    }
    
    //fonction qui va permettre à notre robot de se déplacer
    func seDeplacer(direction: Orientation, vitesse: Int) {
        var vitesseDeplacement: Int //si on rentre un chiffre/nombre plus élevé que la var runSpeed, celle ci sera automatiquement réajusté
        if vitesse > runSpeed {
            vitesseDeplacement = runSpeed
        } else {
            vitesseDeplacement = vitesse
        }
        switch direction { //switch pour déplacer notre robot selon des coordonnées
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
    
    //fonction seDeplacer qui va nous permettre avec la fonction suivante d'avoir un nombre aléatoire relatif à la vitesse de déplacement
    func seDeplacer(direction: Orientation) {
        let vitesseDeplacement: Int = seDeplacerAleatoirement() //fait appel à la fonction seDepacerAleatoirement
        
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
    
    //fonction qui sort un chiffre aléatoirement
    func seDeplacerAleatoirement() -> Int { //la fonction va retourner un entier aléatoire : ce chiffre sera la constante de vitesseDeplacement dans la fonction seDeplacer
        return Int(arc4random_uniform(UInt32(runSpeed + 1)))
        
    }
    
}

//creation d'une nouvelle classe RobotUnique avec des init qui servent à créer un robot unique lors de l'appel dans le main.swift.
//Cette classe reprend la même classe que Robot mais n'en n'hérite pas.
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
            print("Je me suis déplacé de \(vitesseDeplacement) cases vers le haut ma nouvelle coordonnée Y = \(position.Y)")
        case .bas:
            position.Y -= vitesseDeplacement
            print("Je me suis déplacé de \(vitesseDeplacement) cases vers le bas ma nouvelle coordonnée Y = \(position.Y)")
        case .droite:
            position.X += vitesseDeplacement
            print("Je me suis déplacé de \(vitesseDeplacement) cases vers la droite ma nouvelle coordonnée X = \(position.X)")
        case .gauche:
            position.X -= vitesseDeplacement
            print("Je me suis déplacé de \(vitesseDeplacement) cases vers la gauche ma nouvelle coordonnée X = \(position.X).")
        }
        
    }
    
    
    func seDeplacerAleatoirement() -> Int {
        return Int(arc4random_uniform(UInt32(runSpeed + 1)))
        
    }
    
}


 
    
    
    
    
    
    
    





