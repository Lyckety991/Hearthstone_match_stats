//
//  ClassManager.swift
//  Hearthstone_match_stats
//
//  Created by Patrick Lanham on 28.07.22.
//

import Foundation


class ClassManager: ObservableObject {
    
    static let yourClasses = [
        "Mage","Warlock","Paladin","Warrior","Rouge","Priest","Demon Hunter","Shaman","Hunter","Druide"
    ]
    
    
    static let enemyClasses = [
    
        "Mage","Warlock","Paladin","Warrior","Rouge","Priest","Demon Hunter","Shaman","Hunter","Druide"
    ]
    
    @Published var yourClassesIndex = 0
    @Published var enemyClassesIndex = 0
    
    
}
