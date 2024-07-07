//
//  CustomImage.swift
//  Film Book
//
//  Created by Okan Orkun on 7.07.2024.
//

import SwiftUI

struct CustomImage: View {
    
    let url: String
    @ObservedObject var imageClient = ImageClient()
    
    init(url: String) {
        self.url = url
        self.imageClient.downloadImage(url: url)
    }
    
    var body: some View {
        if let data = self.imageClient.downloadedImage {
            return Image(uiImage: UIImage(data: data)!)
                .resizable()
        } else {
            return Image("placeholder")
                .resizable()
        }
    }
}

#Preview {
    CustomImage(url: "https://m.media-amazon.com/images/M/MV5BNjM0NTc0NzItM2FlYS00YzEwLWE0YmUtNTA2ZWIzODc2OTgxXkEyXkFqcGdeQXVyNTgwNzIyNzg@._V1_SX300.jpg")
}
