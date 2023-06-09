//
//  ClassCircle.swift
//  Hearthstone_match_stats
//
//  Created by Patrick Lanham on 08.06.23.
//

import SwiftUI

struct ClassCircle: View {
    
    @State var classText: String = "Warrior"
    @State var numberTag: Int = 1
    
    var body: some View {
        VStack {
            Circle()
                .strokeBorder(.black, lineWidth: 2)
                .background(Circle().fill(.blue))
                .frame(maxWidth: 70,maxHeight: 80)
                .shadow(radius: 1)
            .tag(numberTag)
            Text(classText)
                .bold().font(.system(size: 20))
        }
            
            
    }
}

struct ClassCircle_Previews: PreviewProvider {
    static var previews: some View {
        ClassCircle()
    }
}
