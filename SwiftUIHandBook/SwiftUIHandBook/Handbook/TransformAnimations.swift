//
//  TransformAnimations.swift
//  SwiftUIHandBook
//
//  Created by Ömer Faruk Öztürk on 2.01.2025.
//

import SwiftUI

struct TransformAnimations: View {
    @State var show = false
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 300, height: 200)
            .offset(y: show ? -200 : 0)
            .scaleEffect(show ? 1.8 : 1)
            .rotation3DEffect(Angle(degrees: show ? 30 : 0), axis: (x: 1, y: 0, z: 0), anchor: .center, anchorZ: 0, perspective: 1)
            .onTapGesture {
                withAnimation {
                    show.toggle()
                }
            }
    }
}

#Preview {
    TransformAnimations()
}
