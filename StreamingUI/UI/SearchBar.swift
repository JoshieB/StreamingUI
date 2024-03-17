//
//  SearchBar.swift
//  StreamingUI
//
//  Created by Joshua Butler on 3/16/24.
//

import SwiftUI

struct SearchBar: View {
    @State var searchText = ""
    var body: some View {
        HStack {
            
            TextField("Search", text: $searchText)
            
            Image(systemName: "magnifyingglass")
        }
        .padding(EdgeInsets(top: 7, leading: 8, bottom: 7, trailing: 8))
        .font(.headline)
        .background(.ultraThinMaterial)
        .foregroundColor(.white.opacity(0.6))
        .cornerRadius(10)
    }
}

#Preview {
    SearchBar()
}
