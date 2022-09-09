//
//  AstronautView.swift
//  Moonshot
//
//  Created by Kyle Warren on 9/8/22.
//

import SwiftUI

struct AstronautView: View {
    // Requesting property comes in so we must pass it into preview
    let astronaut: Astronaut
    
    var body: some View {
        ScrollView {
            VStack {
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()
                
                Text(astronaut.description)
                // Padding attached to text itself not vstack arround it so image will be edge to edge but text will be inset slightly
                    .padding()
            }
        }
        // Scroll view color
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        // Tertiary screen - inline so it stays small
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AstronautView_Previews: PreviewProvider {
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        AstronautView(astronaut: astronauts["armstrong"]!)
    }
}
