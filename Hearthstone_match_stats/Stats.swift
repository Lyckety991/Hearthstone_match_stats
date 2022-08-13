//
//  Stats.swift
//  Hearthstone_match_stats
//
//  Created by Patrick Lanham on 12.08.22.
//

import SwiftUI

struct Stats: View {
    var body: some View {
        NavigationView {
        VStack {
            List {
                Section("VS Druid") {
                    HStack {
                        Text("Wins:")
                            .padding(.trailing, 15)
                        Text("13")
                            .foregroundColor(.green)
                            
                    }
                    HStack {
                        Text("Loss:")
                            .padding(.trailing, 15)
                        Text("11")
                            .foregroundColor(.red)
                            
                    }
                }
                Section("VS Mage") {
                    Text("Wins:")
                    Text("Loss:")
                }
                Section("VS Warrior") {
                    Text("Wins:")
                    Text("Loss:")
                }
                Section("VS Rouge") {
                    Text("Wins:")
                    Text("Loss:")
                }
                Section("VS Demon Hunter") {
                    Text("Wins:")
                    Text("Loss:")
                }
                Section("VS Warlock") {
                    Text("Wins:")
                    Text("Loss:")
                }
                Section("VS Priest") {
                    Text("Wins:")
                    Text("Loss:")
                }
                Section("VS Hunter") {
                    Text("Wins:")
                    Text("Loss:")
                }
                Section("VS Paladin") {
                    Text("Wins:")
                    Text("Loss:")
                }
               
                
            }
            .listStyle(.insetGrouped)
            
            
        }
        .navigationTitle("Match Stats")
        }
    }
}

struct Stats_Previews: PreviewProvider {
    static var previews: some View {
        Stats()
    }
}
