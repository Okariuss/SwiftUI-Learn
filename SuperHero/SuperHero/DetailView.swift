//
//  DetailView.swift
//  SuperHero
//
//  Created by Okan Orkun on 7.07.2024.
//

import SwiftUI

struct DetailView: View {
    
    var hero: SuperHeroModel
    
    var body: some View {
        VStack {
            MapView(coordinate: hero.coordinateLocation)
                .frame(height: UIScreen.main.bounds.height * 0.3)
                .ignoresSafeArea()
            CircleImage(image: Image(hero.imageName))
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                .offset(y: UIScreen.main.bounds.height * -0.35)
            
            VStack {
                HStack {
                    Text(hero.name)
                        .font(.largeTitle)
                        .foregroundStyle(.blue)
                    
                    Spacer()
                    
                    Text(hero.realName)
                        .font(.title)
                        .foregroundStyle(.orange)
                }
                
                HStack {
                    Text(hero.city)
                        .bold()
                    Spacer()
                    Text(hero.job)
                        .bold()
                }
                
            }.padding()
                .offset(y: UIScreen.main.bounds.height * -0.3)
        }
        Spacer()
    }
}

#Preview {
    DetailView(hero: batman)
}
