//
//  CircleImage.swift
//  SuperHero
//
//  Created by Okan Orkun on 7.07.2024.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(.white, lineWidth: 5))
            .shadow(radius: 12)
    }
}

#Preview {
    CircleImage(image: Image("superman"))
}
