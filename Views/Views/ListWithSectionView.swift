//
//  ListWithSectionView.swift
//  Views
//
//  Created by Okan Orkun on 7.07.2024.
//

import SwiftUI

struct ListWithSectionView: View {
    var body: some View {
        List {
            ForEach(userList) { group in
                Section(header: Text(group.role)) {
                    ForEach(group.names, id: \.self) { name in
                        Text(name)
                    }
                }
                
            }
        }
    }
}

#Preview {
    ListWithSectionView()
}
