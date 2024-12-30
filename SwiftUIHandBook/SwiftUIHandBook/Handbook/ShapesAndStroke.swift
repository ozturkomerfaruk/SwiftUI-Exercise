//
//  ShapesAndStroke.swift
//  SwiftUIHandBook
//
//  Created by Ömer Faruk Öztürk on 30.12.2024.
//

import SwiftUI

struct ShapesAndStroke: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.blue).ignoresSafeArea()
            
            VStack {
                Circle()
                    .stroke(Color.black, lineWidth: 2)
                    .frame(width: 44, height: 44)
                
                Text("Meng To").bold()

                Capsule()
                    .foregroundStyle(.green)
                    .frame(height: 44)
                    .overlay {
                        Text("Sign up")
                    }
            }
            .padding()
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
            .padding()
        }
    }
}

#Preview {
    ShapesAndStroke()
}
