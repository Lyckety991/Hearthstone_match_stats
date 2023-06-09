//
//  EmptyMatchView.swift
//  Hearthstone_match_stats
//
//  Created by Patrick Lanham on 08.02.23.
//

import SwiftUI

struct EmptyMatchView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("No Matches")
                .font(.title)
                .bold()
        }
    }
}

struct EmptyMatchView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyMatchView()
    }
}
