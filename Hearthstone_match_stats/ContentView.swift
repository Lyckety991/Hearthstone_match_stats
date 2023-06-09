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
        
            VStack(spacing: 10) {
            
            Spacer()
            Text("Matchtracker App")
                .foregroundColor(.white)
                .font(.title)
                .bold()
                
            Text("A simple way to track your Hearthstone matches easy")
                    .multilineTextAlignment(.center)
                .padding(.bottom, 120)
                .font(.system(size: 18))
                .foregroundColor(.white)
            NavigationLink {
                newMatchScreen()
            } label: {
               CustomButton(text: "New Match")
                    
            }

            NavigationLink {
                HistoryScreen(color: ColorCheck(checkColor: false))
            } label: {
               CustomButton(text: "Match History")
                    
            }
            
            Spacer()
            
            HStack(spacing: 20) {
                Button {
                    showAsSheet.toggle()
                } label: {
                    Text("About")
                        .foregroundColor(.white)
                        .underline()
                }
                .sheet(isPresented: $showAsSheet) {
                    About()
                }
                
                Button {
                    showCopyright.toggle()
                } label: {
                    Text("Copyright")
                        .foregroundColor(.white)
                        .underline()
                }
                .sheet(isPresented: $showCopyright) {
                    Copyright()
                }


            }
                
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.cyan)
       
       
        
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, MatchDataManager.preview.persistantContainer.viewContext)
    }
}
