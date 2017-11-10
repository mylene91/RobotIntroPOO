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
    
    
    //enum des orientations que peut prendre le robot et aléatoire
    enum Orientation: UInt32 {
        case haut, bas, droite, gauche
        
        
        private static let _count: Orientation.RawValue = {
            var maxValue: UInt32 = 0
            while let _ = Orientation(rawValue: maxValue) {
                maxValue += 1
            }
            return maxValue
        }()
        static func randomDirection() -> Orientation {
            let rand = arc4random_uniform(_count)
            return Orientation(rawValue: rand)!
        }
    }
    

    
    var name: String
    var life: Int
    var runSpeed: Int
    var position: (X: Int, Y: Int)
    var arme: Arme
    
    
    convenience init(name: String, arme: Arme) {
        self.init(name: name, life: 100, runSpeed: 3, position: (X: 0, Y: 0), arme: arme)
    }
 
    init(name: String, life: Int, runSpeed: Int, position: (X: Int, Y: Int), arme: Arme) {
        self.name = name
        self.life = life
        self.runSpeed = runSpeed
        self.position = position
        self.arme = arme
    }
    
    //fonction pour que le robot se présente
    func sePresenter() {
        print("Bonjour, je m'appelle \(name). J'ai \(life) points de vie. Je me déplace à \(runSpeed) cases par seconde. Je suis à la case de coordonnées \(position). J'ai une super arme : \(arme.name) et elle fait \(arme.damage) points de dégats")
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
    
    //fonction seDeplacer qui va nous permettre avec la fonction suivante d'avoir un nombre aléatoire relatif à la vitesse de déplacement
     func seDeplacer() {
        let vitesseDeplacement: Int = genererVitesseAleatoire() //fait appel à la fonction generervitessealeatoire
        
        switch Orientation.randomDirection() {
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
    func genererVitesseAleatoire() -> Int { //la fonction va retourner un entier aléatoire : ce chiffre sera la constante de vitesseDeplacement dans la fonction seDeplacer
        return Int(arc4random_uniform(UInt32(runSpeed + 1)))
        
    }

    
}

//Une classe arme pour équiper les robots
class Arme {
    var name : String
    var damage : Int
    
    init (name : String, damage : Int){
        self.name = name
        self.damage = damage
        
        
    }

    
}

//classe épée déjà paramétré
class Epee: Arme {
    init() {
        super.init(name: "epée1", damage: 10)
    }
}
    
    
    
    
    
    





