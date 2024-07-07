//
//  CustomImage.swift
//  PokemonWidget
//
//  Created by Okan Orkun on 7.07.2024.
//

import SwiftUI

struct CustomImage: View {
    
    var image: Image
    
    var body: some View {
        image.resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(.yellow, lineWidth: 8))
            .shadow(radius: 10)
    }
}

#Preview {
    CustomImage(image: Image("pikachu"))
}
