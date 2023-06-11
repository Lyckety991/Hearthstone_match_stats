//
//  ClassCircle.swift
//  Hearthstone_match_stats
//
//  Created by Patrick Lanham on 08.06.23.
//

import SwiftUI

struct ClassCircle: View {
    
   
    @State var numberTag: Int = 1
    @State var image: String
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
                .shadow(radius: 6)
            
        }
            
            
    }
}

struct ClassCircle_Previews: PreviewProvider {
    static var previews: some View {
        ClassCircle(image: "warrior")
    }
}
