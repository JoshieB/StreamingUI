//
//  BackgroundCircle.swift
//  StreamingUI
//
//  Created by Joshua Butler on 3/16/24.
//

import SwiftUI

struct BackgroundCircle: View {
    @State var color: Color = Color(.black)
    var body: some View {
        Circle()
            .frame(width: 200, height: 200)
            .foregroundColor(color)
    }
}

#Preview {
    BackgroundCircle()
}
