//
//  ListView.swift
//  Views
//
//  Created by Okan Orkun on 7.07.2024.
//

import SwiftUI

struct ListView: View {
    let myList = ["Okan", "Orkun", "Onur", "Burak", "Erenay"]
    var body: some View {
        /*
        List {
            ForEach(myList, id: \.self) { item in
                Text(item)
            }
        }
         */
        
        List(myList, id: \.self) { item in
            Text(item)
        }
    }
}

#Preview {
    ListView()
}
