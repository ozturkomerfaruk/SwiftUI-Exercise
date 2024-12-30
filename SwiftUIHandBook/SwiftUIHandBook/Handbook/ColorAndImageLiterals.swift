//
//  ColorAndImageLiterals.swift
//  SwiftUIHandBook
//
//  Created by Ömer Faruk Öztürk on 30.12.2024.
//

import SwiftUI

struct ColorAndImageLiterals: View {

    var body: some View {
        VStack {
            Text("Ömer Faruk")
                .foregroundStyle(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))) //#colorLiteral(
            
            Image(uiImage: #imageLiteral(resourceName: "appleLogo"))
                .resizable()
                .frame(width: 40, height: 40) //#imageLiteral(
        }
    }
}

#Preview {
    ColorAndImageLiterals()
}
