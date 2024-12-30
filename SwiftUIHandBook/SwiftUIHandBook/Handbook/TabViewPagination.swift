//
//  TabViewPagination.swift
//  SwiftUIHandBook
//
//  Created by Ömer Faruk Öztürk on 30.12.2024.
//

import SwiftUI

struct TabViewPagination: View {
    var body: some View {
        TabView {
            RoundedRectangle(cornerRadius: 30).padding()
                .foregroundStyle(.red)
            RoundedRectangle(cornerRadius: 30).padding()
                .foregroundStyle(.green)
            RoundedRectangle(cornerRadius: 30).padding()
                .foregroundStyle(.blue)
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    TabViewPagination()
}
