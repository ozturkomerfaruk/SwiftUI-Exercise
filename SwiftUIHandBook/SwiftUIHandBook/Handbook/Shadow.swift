//
//  Shadow.swift
//  SwiftUIHandBook
//
//  Created by Ömer Faruk Öztürk on 30.12.2024.
//

import SwiftUI

struct Shadow: View {
    var body: some View {
        VStack {
            Text("App of the day")
                .font(.title).bold()
                .foregroundColor(.white)
                .shadow(radius: 20)
        }
        .frame(width: 300, height: 40)
        .background(Color.pink)
        .cornerRadius(20)
        .shadow(color: Color.blue.opacity(0.5), radius: 5, x: 0, y: 2)
        .shadow(color: Color.pink, radius: 20, x: 0, y: 10)
    }
}

#Preview {
    Shadow()
}
