//
//  MaskAndTransparency.swift
//  SwiftUIHandBook
//
//  Created by Ömer Faruk Öztürk on 30.12.2024.
//

import SwiftUI

struct MaskAndTransparency: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .font(.title3).bold()
        }
        .padding()
        .background(.blue)
        .mask(
            LinearGradient(gradient: Gradient(colors: [Color.black, Color.black.opacity(0)]), startPoint: .top, endPoint: .bottom)
        )
    }
}

#Preview {
    MaskAndTransparency()
}
