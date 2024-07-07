//
//  DetailView.swift
//  Film Book
//
//  Created by Okan Orkun on 7.07.2024.
//

import SwiftUI

struct DetailView: View {
    
    let imdbId: String
    
    @ObservedObject var filmDetailViewModel = FilmDetailViewModel()
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    CustomImage(url: filmDetailViewModel.filmDetail?.poster ?? "")
                        .frame(width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.height * 0.3)
                    
                    Text(filmDetailViewModel.filmDetail?.plot ?? "Film Detail")
                        .padding()
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.leading)
                    
                    Text("Director: \(filmDetailViewModel.filmDetail?.director ?? "")")
                        .padding()
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.leading)
                    
                    Text("Writer: \(filmDetailViewModel.filmDetail?.writer ?? "")")
                        .padding()
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.leading)
                    
                    Text("Awards: \(filmDetailViewModel.filmDetail?.awards ?? "")")
                        .padding()
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.leading)
                    
                    Text("Year: \(filmDetailViewModel.filmDetail?.year ?? "")")
                        .padding()
                }.onAppear(perform: {
                    self.filmDetailViewModel.getFilmDetail(imdbId: imdbId)
                })
            .padding()
            }
        }.navigationTitle(filmDetailViewModel.filmDetail?.title ?? "")
            .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    DetailView(imdbId: "")
}
