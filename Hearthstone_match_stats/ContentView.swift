//
//  ContentView.swift
//  Hearthstone_match_stats
//
//  Created by Patrick Lanham on 21.07.22.
//

import SwiftUI

struct ContentView: View {
    @State private var showAsSheet = false
    @State private var showCopyright = false
    
    var body: some View {
        NavigationView {
        
        VStack {
            
            Spacer()
            Text("Hearthstone Matchtracker App")
                .foregroundColor(.black)
                .font(.title2)
                .bold()
                
            Text("A simple way to track your matches easy")
                .padding(.bottom, 120)
           
            NavigationLink {
                NewMatchView()
            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.cyan)
                    .frame(height: 100)
                    .padding(.horizontal, 60)
                    .overlay(
                            Text("New match")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                                .bold()
                                .font(.callout)
                        )
                    
            }

            NavigationLink {
                HistoryScreen()
            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.cyan)
                    .frame(height: 100)
                    .padding(.horizontal, 60)
                    .overlay(
                            Text("Match history")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                                .bold()
                                .font(.callout)
                        )
                    
            }
            
            Spacer()
            
            HStack(spacing: 20) {
                Button {
                    showAsSheet.toggle()
                } label: {
                    Text("About")
                        .foregroundColor(.mint)
                        .underline()
                }
                .sheet(isPresented: $showAsSheet) {
                    About()
                }
                
                Button {
                    showCopyright.toggle()
                } label: {
                    Text("Copyright")
                        .foregroundColor(.mint)
                        .underline()
                }
                .sheet(isPresented: $showCopyright) {
                    Copyright()
                }


            }
                
        }
       
       
        
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, MatchDataManager.preview.persistantContainer.viewContext)
    }
}
