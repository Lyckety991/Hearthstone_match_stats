//
//  Extensions.swift
//  Hearthstone_match_stats
//
//  Created by Patrick Lanham on 09.01.23.
//

import Foundation
import SwiftUI



extension Text {
    func buttonFont() -> some View {
      
            self.foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.cyan)
                .cornerRadius(15)
                .font(.system(size: 20))
                .shadow(radius: 10)
    }
}
