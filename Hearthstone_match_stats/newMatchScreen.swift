//
//  newMatchScreen.swift
//  Hearthstone_match_stats
//
//  Created by Patrick Lanham on 08.06.23.
//

import SwiftUI

struct newMatchScreen: View {
    
    
    // Own class
    @State var classArray1 = [
    
       "warrior", "mage", "warlock", "paladin", "death-knight", "hunter", "shaman", "rogue", "druid", "demonhunter"
    
    ]
    
    
    // Enemy class
    @State var classArray2 = [
    
        "warrior", "mage", "warlock", "paladin", "death-knight", "hunter", "shaman", "rogue", "druid", "demonhunter"
    
    ]
    
    // Varibles
    @State var matchTitle: String = ""
    @State private var isSelected = false
    @State private var isSelected2 = false
    @State private var numberTag = 0
    
    
    
    var body: some View {
        
        
        // MARK: - Top Section ----> TextField
        
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
            
            
            // MARK: - Middle Section ----> Class selection
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(classArray1, id: \.self) { classItem in
                        
                        Button {
                            print(numberTag)
                        } label: {
                            ClassCircle(image: classItem)
                        }
                        
                    }
                }
                
                
            }
            .padding(.horizontal,10)
            
            Divider()
                .padding()
            
            HStack {
                Text("Choose enemy class")
                    .font(.title2)
                
                Spacer()
            }
            .padding()
            
            ScrollView(.horizontal) {
                HStack {
                    
                    ForEach(classArray2, id: \.self) { classItem in
                        
                        Button {
                            
                        } label: {
                            ClassCircle(image: classItem)
                        }
                        .tag(numberTag)
                        
                    }
                    
                }
              
               
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
            
            //MARK: - Bottom Section ----> SelectButton / Savebutton
            
            HStack {
                
                    SelectButton(isSelected: $isSelected, color: .green, text: "Win")
                
                    .onTapGesture {
                        isSelected.toggle()
                        
                        if isSelected {
                            isSelected2 = false
                            
                        }
                    }
                
                
                     SelectButton(isSelected: $isSelected2, color: .red, text: "Loss")
                 
                     .onTapGesture {
                         isSelected2.toggle()
                         
                         if isSelected2 {
                             isSelected = false
                             
                         }
                     }
                
            }
            .padding(.horizontal, 20)
            
         
            // Save Button
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
