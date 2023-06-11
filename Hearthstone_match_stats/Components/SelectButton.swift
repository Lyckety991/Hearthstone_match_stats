//
//  SelectButton.swift
//  Hearthstone_match_stats
//
//  Created by Patrick Lanham on 10.06.23.
//

import SwiftUI

struct SelectButton: View {
    @Binding var isSelected: Bool
    @State var color: Color
    @State var text: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerSize: .zero)
                .cornerRadius(5)
                .frame(height: 50)
                .foregroundColor(isSelected ? color : .gray)
                .padding(.horizontal)
            Text(text)
                .bold()
                .foregroundColor(.white)
        }
        .shadow(radius: 5)
    }
}

struct SelectButton_Previews: PreviewProvider {
    static var previews: some View {
        SelectButton(isSelected: .constant(false),color: .blue, text: "Option")
    }
}
