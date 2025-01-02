//
//  MatchedGeometryEffect.swift
//  SwiftUIHandBook
//
//  Created by Ömer Faruk Öztürk on 2.01.2025.
//

import SwiftUI

struct MatchedGeometryEffect: View {
    @State var show = false
    @Namespace var namespace
    
    var body: some View {
        ZStack {
            if !show {
                Rectangle()
                    .matchedGeometryEffect(id: "shape", in: namespace)
                    .frame(width: 100, height: 100)
            } else {
                Rectangle()
                    .matchedGeometryEffect(id: "shape", in: namespace)
                    .frame(maxWidth: .infinity, maxHeight: 400)
            }
        }
        .onTapGesture {
            withAnimation {
                show.toggle()
            }
        }
    }
}

#Preview {
    MatchedGeometryEffect()
}
