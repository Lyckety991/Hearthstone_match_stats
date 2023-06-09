//
//  PickerView.swift
//  Hearthstone_match_stats
//
//  Created by Patrick Lanham on 30.01.23.
//

import SwiftUI

struct PickerView: View {
    
    @ObservedObject var classManager = ClassManager()
    @State private var selectedIndex = 0
    
    var body: some View {
        VStack {
            Form {
                
                ForEach(classManager.yourClassesIndex, id: \.id) { index in
                    Text(classManager.yourClassesIndex)
                }
            }

        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
