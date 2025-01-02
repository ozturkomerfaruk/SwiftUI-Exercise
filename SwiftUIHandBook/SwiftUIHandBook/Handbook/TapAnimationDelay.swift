//
//  TapAnimationDelay.swift
//  SwiftUIHandBook
//
//  Created by Ömer Faruk Öztürk on 2.01.2025.
//

import SwiftUI

struct TapAnimationDelay: View {
    @State var tapAnimation: Bool = false
    
    var body: some View {
        VStack {
            Text("Hello, World!")
        }
        .frame(width: 200, height: 200)
        .background(Color(#colorLiteral(red: 0.4862352014, green: 0, blue: 1, alpha: 1)))
        .cornerRadius(30)
        .shadow(color: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), radius: 10)
        .scaleEffect(tapAnimation ? 1.5 : 1)
        .onTapGesture {
            withAnimation {
                tapAnimation = true
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                    withAnimation {
                        tapAnimation = false
                    }
                }
            }
        }
    }
}

#Preview {
    TapAnimationDelay()
}
