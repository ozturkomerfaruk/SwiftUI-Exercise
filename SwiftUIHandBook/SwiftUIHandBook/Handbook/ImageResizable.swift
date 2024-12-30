//
//  ImageResizable.swift
//  SwiftUIHandBook
//
//  Created by Ömer Faruk Öztürk on 30.12.2024.
//

import SwiftUI

struct ImageResizable: View {
    var body: some View {
        HStack {
            Image("appleLogo") //jpg
                .resizable()
                .frame(width: 50, height: 50)
            
            Image("appleLogo")
                .resizable(capInsets: .init(top: 0, leading: 15, bottom: 0, trailing: 15))
                .frame(width: 50, height: 50)
            
            Image("appleLogo")
                .resizable(resizingMode: .tile)
                .frame(width: 50, height: 50)
        }
    }
}

#Preview {
    ImageResizable()
}
