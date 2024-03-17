//
//  ProfileBar.swift
//  StreamingUI
//
//  Created by Joshua Butler on 3/16/24.
//

import SwiftUI

struct ProfileBar: View {
    var body: some View {
        HStack {
            Image(systemName: "sidebar.left")
            Spacer()
            Image(systemName: "person.fill")
        }
        .padding(EdgeInsets(top: 3, leading: 5, bottom: 2, trailing: 8))
        .foregroundColor(.white)
        .font(.headline)
    }
}

#Preview {
    ProfileBar()
}
