//
//  AdvancedMatchedGeometryEffect.swift
//  SwiftUIHandBook
//
//  Created by Ömer Faruk Öztürk on 2.01.2025.
//

import SwiftUI

struct AdvancedMatchedGeometryEffect: View {
    @State var show = false
    @Namespace var namespace
    
    var body: some View {
        ZStack {
            if !show {
                VStack {
                    HStack(spacing: 16) {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 44)
                        Text("Fever")
                        Spacer()
                        Image(systemName: "play.fill")
                            .font(.title)
                        Image(systemName: "forward.fill")
                            .font(.title)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 44)
                .padding(8)
                .background(
                    RoundedRectangle(cornerRadius: 0)
                        .fill(Color.blue)
                        .matchedGeometryEffect(id: "background", in: namespace)
                )
                .frame(maxHeight: .infinity, alignment: .bottom)
            } else {
                PlayView(namespace: namespace)
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
    AdvancedMatchedGeometryEffect()
}

struct PlayView: View {
    var namespace: Namespace.ID

    var body: some View {
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 30)
                .frame(height: 300)
                .padding()
            Text("Fever")
            HStack {
                Image(systemName: "play.fill")
                    .font(.title)
                Image(systemName: "forward.fill")
                    .font(.title)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.blue)
                .matchedGeometryEffect(id: "background", in: namespace)
        )
        .ignoresSafeArea()
    }
}
