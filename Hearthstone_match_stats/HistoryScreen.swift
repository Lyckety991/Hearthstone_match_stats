//
//  HistoryScreen.swift
//  Hearthstone_match_stats
//
//  Created by Patrick Lanham on 23.07.22.
//

import SwiftUI


struct HistoryScreen: View {
    @State private var searchText = ""
    
    @ObservedObject var classMN = ClassManager()
     
    @Environment(\.managedObjectContext) var viewContext
    @FetchRequest(entity: Match.entity(), sortDescriptors: []) var tasks: FetchedResults<Match>
    
    var matchResult = ["Win", "Loss"]
    var matchTime = DateComponents()
    
    
    var body: some View {
        
            List {
                ForEach(tasks) { task in
                    VStack(alignment: .leading) {
                        HStack {
                        Text(task.title ?? "N/A")
                            .font(.headline)
                        Spacer()
                        Text(task.date?.formatted() ?? "")
                                .font(.subheadline)
                               
                        }
                        HStack {
                            Text(ClassManager.yourClasses[Int(task.myClass)])
                            Text("vs")
                                .underline()
                            Text(ClassManager.enemyClasses[Int(task.enemyClass)])
                               
                        }
                        HStack {
                            Text("Result:")
                                .padding(.trailing, 5)
                            Text(matchResult[Int(task.result)])
                            
                            
                        }
                          
                    }
                    
                }
                .onDelete(perform: deleteMatch)
                
                
            }
            .searchable(text: $searchText) {
                ForEach(ClassManager.enemyClasses, id: \.self) { result in
                    Text("\(result)")
                }
            }
            .foregroundColor(.secondary)
            .navigationTitle("Match history")
            .listStyle(.insetGrouped)
            
    }
    
    func deleteMatch(offsets: IndexSet) {
      offsets.map { tasks [$0]
            
        }.forEach(viewContext.delete)
    }
    
}

struct HistoryScreen_Previews: PreviewProvider {
    static var previews: some View {
        HistoryScreen()
        
            
    }
}
