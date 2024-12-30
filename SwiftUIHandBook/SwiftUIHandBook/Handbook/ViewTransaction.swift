//
//  ViewTransaction.swift
//  SwiftUIHandBook
//
//  Created by Ömer Faruk Öztürk on 30.12.2024.
//

import SwiftUI

struct ViewTransaction: View {
    @State var show = false
    
    var body: some View {
        ZStack {
            if !show {
                VStack {
                    HStack {
                        Image(systemName: "line.3.horizontal")
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).mask(Color.black.opacity(0.1)))
                        
                        Spacer()
                    }
                    .padding()
                    
                    Spacer()
                }
            } else {
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.blue)
                    .frame(maxWidth: UIScreen.main.bounds.size.width / 2)
                    .padding()
                    .transition(.move(edge: .leading))
                    .zIndex(1)
            }
        }
        .onTapGesture {
            withAnimation(.spring()) {
                show.toggle()
            }
        }
    }
}

#Preview {
    ViewTransaction()
}
