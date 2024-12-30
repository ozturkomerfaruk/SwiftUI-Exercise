//
//  SFSymbols.swift
//  SwiftUIHandBook
//
//  Created by Ömer Faruk Öztürk on 30.12.2024.
//

import SwiftUI

struct SFSymbols: View {
    var body: some View {
        VStack {
            Image(systemName: "gear")
                .font(.system(size: 20, weight: .light))
            
            Image(systemName: "gear")
                .imageScale(.large)
            
            Image(systemName: "paperplane.circle.fill")
                .renderingMode(.original) //.template
        }
    }
}

#Preview {
    SFSymbols()
}
