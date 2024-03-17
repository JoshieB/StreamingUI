//
//  ScrollSection.swift
//  StreamingUI
//
//  Created by Joshua Butler on 3/16/24.
//

import SwiftUI

struct ScrollSection: View {
    @State var title = "Classics"
    @State var posters: [String] = ["poster1", "poster2", "poster3", "poster4", "poster5", "poster6", "poster7"]
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
                .padding(.horizontal, 20)
                .foregroundColor(.white)
                .fontWeight(.bold)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(posters.indices, id: \.self){ index in
                        Image(posters[index])
                            .resizable()
                            .frame(width: 100, height: 130)
                            .cornerRadius(20)
                    }
                }
            }
            .offset(x: 20)
            .padding(.trailing, 40)
        }
    }
}

#Preview {
    ScrollSection()
}
