//
//  DragGesture.swift
//  SwiftUIHandBook
//
//  Created by Ömer Faruk Öztürk on 2.01.2025.
//

import SwiftUI

struct DragGestureView: View {
    @State private var viewState = CGSize.zero
    @State private var finalOffset = CGSize.zero

    var body: some View {
        Text("Drag Gesture")
            .offset(x: viewState.width + finalOffset.width, y: viewState.height + finalOffset.height)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        viewState = value.translation
                    }
                    .onEnded { value in
                        withAnimation {
                            finalOffset.width += value.translation.width
                            finalOffset.height += value.translation.height
                            viewState = .zero
                        }
                    }
            )
    }
}

#Preview {
    DragGestureView()
}
