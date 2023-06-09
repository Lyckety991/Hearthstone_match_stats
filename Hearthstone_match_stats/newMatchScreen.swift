//
//  newMatchScreen.swift
//  Hearthstone_match_stats
//
//  Created by Patrick Lanham on 08.06.23.
//

import SwiftUI

struct newMatchScreen: View {
    @State var matchTitle: String = ""
    var body: some View {
        
        ScrollView {
            
            TextField("Add a match title...", text: $matchTitle)
                .padding(.horizontal)
                .frame(height: 65)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .padding()
            
            
            HStack {
                Text("Choose your class")
                    .font(.title2)
                Spacer()
               
            }
            .padding()
            ScrollView(.horizontal) {
                HStack {
                    ClassRectangle()
                    ClassRectangle()
                    ClassRectangle()
                    ClassRectangle()
                    ClassRectangle()
                    ClassRectangle()
                    ClassRectangle()
                    ClassRectangle()
                }
                .padding()
                
            }
            .padding(.horizontal,10)
            
            Divider()
                .padding()
            
            HStack {
                Text("Choose enemys class")
                    .font(.title2)
                
                Spacer()
            }
            .padding()
            
            ScrollView(.horizontal) {
                HStack {
                    ClassRectangle()
                    ClassRectangle()
                    ClassRectangle()
                    ClassRectangle()
                    ClassRectangle()
                    ClassRectangle()
                    ClassRectangle()
                    ClassRectangle()
                }
                .padding()
               
            }
            .padding(.horizontal,10)
            
            Divider()
                .padding()
            
            HStack {
                
                Text("Select if Win/Loss")
                    .font(.title2)
                Spacer()
                
            }
            .padding()
            
            HStack {
                
                
                Button {
                    
                    
                    
                } label: {
                    CustomButton(text: "Win")
                }
                
                
                Button {
                    
                    
                    
                } label: {
                    CustomButton(text: "Loss")
                }
                
                
            }
            .padding(.horizontal, 20)
            
         
            
            Button {
               
            } label: {
                
                Text("Save".uppercased())
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                    
            }
            .padding()
            
         
           
            
        }
        .navigationTitle("New Match")
       
    }
}

struct newMatchScreen_Previews: PreviewProvider {
    static var previews: some View {
        newMatchScreen()
    }
}
