//
//  AnimationModifier.swift
//  SwiftUIHandBook
//
//  Created by Ömer Faruk Öztürk on 30.12.2024.
//

import SwiftUI

struct AnimationModifier: View {
    @State var show = false
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
                .opacity(show ? 0.8 : 0.2)
                .animation(.easeOut(duration: 0.8), value: show)
            
            RoundedRectangle(cornerRadius: 40)
                .foregroundColor(!show ? .blue : .white)
                .frame(height: 300)
                .opacity(show ? 1 : 0.5)
                .padding(show ? 16 : 32)
                .offset(y: show ? 0 : 30)
                .animation(.spring(response: 0.5, dampingFraction: 0.4), value: show)
            
            RoundedRectangle(cornerRadius: 40)
                .frame(height: 300)
                .offset(y: show ? 600 : 0)
                .foregroundColor(show ? .blue : .white)
                .shadow(radius: 40)
                .padding()
                .animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8), value: show)
        }
        .onTapGesture {
            show.toggle()
        }
    }
}

#Preview {
    AnimationModifier()
}
