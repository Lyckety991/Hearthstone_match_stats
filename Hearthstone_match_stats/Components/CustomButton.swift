//
//  CustomButton.swift
//  Hearthstone_match_stats
//
//  Created by Patrick Lanham on 09.01.23.
//

import SwiftUI

struct CustomButton: View {
    var text: String
   
    var body: some View {
        if #available(iOS 16.0, *) {
            Text(text)
                .frame(maxWidth: 250, maxHeight: 30)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal, 20)
                .background(Color.cyan)
                .cornerRadius(15)
                .font(.system(size: 20))
                .shadow(radius: 10)
                .fontWeight(.bold)
                
        } else {
            // Fallback on earlier versions
            Text(text)
                .foregroundColor(.white) 
                .padding()
                .padding(.horizontal, 50)
                .background(Color.cyan)
                .cornerRadius(15)
                .font(.system(size: 20))
                .shadow(radius: 10)
               
        }
        
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(text: "New Match")
    }
}
