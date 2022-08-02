//
//  MatchDataManager.swift
//  Hearthstone_match_stats
//
//  Created by Patrick Lanham on 23.07.22.
//

import Foundation
import CoreData

class MatchDataManager {
    
    
    static let shared = MatchDataManager()
    static var preview: MatchDataManager = {
    
    let manager = MatchDataManager()
    let viewContext = manager.persistantContainer.viewContext
    let task = Match(context: viewContext)

        try? viewContext.save()
        return manager
    }()
    
    
    let persistantContainer: NSPersistentContainer
    init(inMemory: Bool = false) {
        persistantContainer = NSPersistentContainer(name: "CoreData")
        if inMemory {
            persistantContainer.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        persistantContainer.loadPersistentStores { _, error in
            if let error = error {
                fatalError("Unresolved error \(error)")
            }
        }
    }
    
    
}


