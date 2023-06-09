//
//  ClassRectangle.swift
//  Hearthstone_match_stats
//
//  Created by Patrick Lanham on 08.06.23.
//

import SwiftUI

struct ClassRectangle: View {
    @State var text: String = "Warrior"
    var body: some View {
        
        Text(text)
            .padding()
            .frame(maxWidth: 200, maxHeight: 50)
            .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.secondary, lineWidth: 2)
                
            )
    }
}

struct ClassRectangle_Previews: PreviewProvider {
    static var previews: some View {
        ClassRectangle()
    }
}
