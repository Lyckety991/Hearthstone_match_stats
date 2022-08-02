//
//  ProfileView.swift
//  Hearthstone_match_stats
//
//  Created by Patrick Lanham on 28.07.22.
//

import SwiftUI

struct ProfileView: View {
    @ObservedObject var classManager = ClassManager()
    @State private var userName = "xNameless#779"
    
    @State private var favDeck = "ControlWarrior"
    @State private var hateClass = "Shaman"
    @State private var desc = "whdjjdjhwggwrwevfhwhjfghjwgegwerbwenmbrjwegrjgwerwebrbwerbjhwrhjwevhwvehrvhjwvrjhvwrvjwhrvjhwevrrvwerhjwevrjhwevrhvwehrvjwvrwervjwrvjwr"
    
    var body: some View {
        NavigationView {
        VStack {
            List {
                Section("Battle.net ID") {
                    Text(userName)
                }
                Section("Favorite Class") {
                    Picker("grgerg", selection: $classManager.yourClassesIndex) {
                        ForEach(0..<ClassManager.yourClasses.count, id: \.self)  { index in
                            Text(ClassManager.yourClasses[index]).tag(index)
                            
                        }
                    }
                }
                
                Section("Most hated class") {
                    Text(hateClass)
                }
                Section("Favorite Deck") {
                    Text(favDeck)
                }
                Section("Your Hearthstone BIO") {
                    Text(desc)
                    
                }
                
               
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Your Profile")
        }
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
