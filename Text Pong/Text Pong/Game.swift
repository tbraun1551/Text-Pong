//
//  Game.swift
//  Text Pong
//
//  Created by Thomas Braun on 8/26/19.
//  Copyright © 2019 Thomas Braun. All rights reserved.
//

import Foundation

class Game {
    let triangle: [Cup] = [Cup(1), Cup(2), Cup(3), Cup(4), Cup(5), Cup(6), Cup(7), Cup(8), Cup(9), Cup(10),]
    var cupsHit: Int
    var numberOfAttempts: Int
    var difficultyLevel: Int  //5 Levels of difficulty
    var cupsRemaining: Int
    var cupShooting: Int?
    
    init() {
        self.numberOfAttempts = 0
        self.cupsHit = 0
        self.difficultyLevel = 1
        self.cupsRemaining = 10 - cupsHit
        self.cupShooting = nil
    }
    
    func changeAttempt() {
        self.numberOfAttempts += 1
    }
    
    func cupHit() {
        self.cupsHit += 1
        self.cupsRemaining = 10 - self.cupsHit
        let cupLocation = cupShooting! - 1
        triangle[cupLocation].status = false
    }
    func numberGenerator() -> Int {
        var goal:Int
        if cupsRemaining > 7 {
            goal = Int.random(in: 1...2)
        }
        if cupsRemaining > 4 && cupsRemaining <= 7 {
            goal = Int.random(in: 1...3)
        }
        if cupsRemaining <= 4 && cupsRemaining > 0 {
            goal = Int.random(in: 1...4)
        } else {
            goal = 0
        }
        return goal
    }
    
}

class Cup {
    let cupName: Int
    var status: Bool// True = alive, False = dead
    
    init(_ name: Int) {
        self.cupName = name
        self.status = true
    }
}
