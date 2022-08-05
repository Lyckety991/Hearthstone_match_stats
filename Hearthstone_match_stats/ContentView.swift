//
//  ContentView.swift
//  Hearthstone_match_stats
//
//  Created by Patrick Lanham on 21.07.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
        
        VStack {
            
            Spacer()
            Text("Matchtracker for Heartstone")
                .foregroundColor(.orange)
                .font(.headline)
                .bold()
                .padding()
            NavigationLink {
                NewMatchView()
            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.cyan)
                    .frame(height: 60)
                    .padding(.horizontal, 60)
                    .overlay(
                            Text("New Match")
                                .foregroundColor(.white)
                                .bold()
                                .font(.callout)
                        )
                    
            }

            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.cyan)
                .frame(height: 60)
                .padding(.horizontal, 60)
                .overlay(
                    NavigationLink {
                        HistoryScreen()
                        
                    } label: {
                        Text("History")
                            .foregroundColor(.white)
                            .bold()
                            .font(.callout)
                    })
            
            NavigationLink {
                ProfileView()
            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.cyan)
                    .frame(height: 60)
                    .padding(.horizontal, 60)
                    .overlay(
                        Text("Profile")
                            .foregroundColor(.white)
                            .bold()
                    )
               
            }
                
                
            Spacer()
            
            HStack(spacing: 20) {
                Button {
                    
                } label: {
                    Text("About")
                        .foregroundColor(.mint)
                        .underline()
                }
                
                Button {
                    
                } label: {
                    Text("Copyright")
                        .foregroundColor(.mint)
                        .underline()
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
