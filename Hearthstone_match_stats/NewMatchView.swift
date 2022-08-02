//
//  NewMatchView.swift
//  Hearthstone_match_stats
//
//  Created by Patrick Lanham on 21.07.22.
//

import SwiftUI

struct NewMatchView: View {
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.managedObjectContext) var viewContext
    
    @State private var date = Date()
    @State private var matchTitle: String
    @State private var resultGame: Int
    @State private var yourClass: Int
    @State private var opponentClass: Int
    private var task: Match?
    
    init(task: Match? = nil) {
        self.task = task
        self._matchTitle = State(initialValue: task?.title ?? "")
        self._yourClass = State(initialValue: Int(task?.myClass ?? 0))
        self._opponentClass = State(initialValue: Int(task?.enemyClass ?? 0))
        self._resultGame = State(initialValue: Int(task?.result ?? 0))
        
        
    }
    
    var body: some View {
        VStack {
            Form {
                
                Section(header: Text("Match title")) {
                    TextField("Match descriptin...", text: $matchTitle)
                    
                }
                Section(header: Text("Result")) {
                    Picker("", selection: $resultGame) {
                        Text("Win").tag(0)
                        Text("Loss").tag(1)
                    }
                }
                .pickerStyle(.segmented)
                
                Section {
                   
                        Picker("",selection: $yourClass) {
                            Text("Mage").tag(0)
                            Text("Warlock").tag(1)
                            Text("Paladin").tag(2)
                            Text("Warrior").tag(3)
                            Text("Rouge").tag(4)
                            Text("Priest").tag(5)
                            Text("Demon Hunter").tag(6)
                            Text("Shaman").tag(7)
                            Text("Hunter").tag(8)
                            Text("Druide").tag(9)
                            
                        }
                    
                } header: {
                    Text("Your Class")
                }
                .pickerStyle(.wheel)
                        
                  
                Section {
                    Picker("",selection: $opponentClass) {
                        Text("Mage").tag(0)
                        Text("Warlock").tag(1)
                        Text("Paladin").tag(2)
                        Text("Warrior").tag(3)
                        Text("Rouge").tag(4)
                        Text("Priest").tag(5)
                        Text("Demon Hunter").tag(6)
                        Text("Shaman").tag(7)
                        
                    }
                } header: {
                    Text("Enemy class")
                }
                .pickerStyle(.wheel)
                
                
                
            }
            .listStyle(.insetGrouped)
            
        
        }
        .navigationTitle("New match")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                   createNewMatch()
                    presentationMode.wrappedValue.dismiss()
                    
                } label: {
                    Text("Save")
                }
                

            }
           
            
       
        }
       
        
       
    }
    
    
    func createNewMatch() {
        
        let newMatch = Match(context: viewContext)
        newMatch.id = UUID()
        newMatch.title = matchTitle
        newMatch.myClass = Int16(yourClass)
        newMatch.enemyClass = Int16(opponentClass)
        newMatch.date = Date()
        newMatch.result = Int16(resultGame)
        
        try? viewContext.save()
        
    }
    
    
  
}

struct NewMatchView_Previews: PreviewProvider {
    static var previews: some View {
        NewMatchView()
    }
}
