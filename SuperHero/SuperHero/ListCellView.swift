//
//  ListCellView.swift
//  SuperHero
//
//  Created by Okan Orkun on 7.07.2024.
//

import SwiftUI

struct ListCellView: View {
    
    var hero: SuperHeroModel
    
    var body: some View {
        HStack {
            Image(hero.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 80, alignment: .leading)
                .clipShape(Circle())
            
            Spacer()
            
            VStack {
                Text(hero.name)
                    .font(.title)
                Text(hero.realName)
            }
            
            Spacer()
        }
    }
}

#Preview {
    ListCellView(hero: batman)
}
