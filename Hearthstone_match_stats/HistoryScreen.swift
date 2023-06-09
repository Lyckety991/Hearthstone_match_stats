//
//  HistoryScreen.swift
//  Hearthstone_match_stats
//
//  Created by Patrick Lanham on 23.07.22.
//

import SwiftUI


struct HistoryScreen: View {
    
    
    @ObservedObject var classMN = ClassManager()
     
    @Environment(\.managedObjectContext) var viewContext
    @FetchRequest(entity: Match.entity(), sortDescriptors: []) var tasks: FetchedResults<Match>
    
    var matchResult = ["Win", "Loss"]
    
    var color: ColorCheck
    
    var red = Color.red
    var green = Color.green
    
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            
            List {
                
                    ForEach(tasks) { task in
                        VStack(alignment: .leading) {
                            HStack {
                            Text(task.title ?? "No Title")
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
                                Spacer()
                                Image(systemName: "circle.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(color.checkColor ? green : red)
                                   
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
           
          
                
           
        }
        .navigationTitle("Match History")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.mint)
            
          
            
            
        
    }
    
    
    func deleteMatch(offsets: IndexSet) {
      offsets.map { tasks [$0]
            
        }.forEach(viewContext.delete)
    }
    
}

struct HistoryScreen_Previews: PreviewProvider {
    static var previews: some View {
        HistoryScreen(color: ColorCheck(checkColor: true))
        
            
    }
}
