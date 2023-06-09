//
//  Hearthstone_match_statsApp.swift
//  Hearthstone_match_stats
//
//  Created by Patrick Lanham on 21.07.22.
//

import SwiftUI

@main
struct Hearthstone_match_statsApp: App {
    let manager = MatchDataManager.shared
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environment(\.managedObjectContext, manager.persistantContainer.viewContext)
           
                
        }
    }
}
