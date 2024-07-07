//
//  SpecialImage.swift
//  Views
//
//  Created by Okan Orkun on 7.07.2024.
//

import SwiftUI

struct SpecialImage: View {
    
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.2, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(.purple, lineWidth: 5))
            .shadow(radius: 10)
    }
}

#Preview {
    SpecialImage(imageName: "istanbul")
}
