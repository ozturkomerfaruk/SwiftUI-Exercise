//
//  SpotifyCategoryCell.swift
//  SwiftUIExercise
//
//  Created by Ömer Faruk Öztürk on 22.12.2024.
//

import SwiftUI

struct SpotifyCategoryCell: View {
    var title: String = "Music"
    var isSelected: Bool = false
    
    var body: some View {
        Text(title)
            .font(.callout)
            .frame(minWidth: 35)
            .padding(.vertical, 8)
            .padding(.horizontal, 10)
            .foregroundStyle(isSelected ? .spotifyBlack : .spotifyWhite)
            .background(isSelected ? .spotifyGreen : .spotifyDarkGray)
            .cornerRadius(16)
    }
}

#Preview {
    ZStack {
        Color.spotifyBlack.ignoresSafeArea()
        HStack(spacing: 40) {
            SpotifyCategoryCell(title: "Ömer")
            SpotifyCategoryCell(title: "Faruk", isSelected: true)
            SpotifyCategoryCell(title: "Öztürk")
        }
    }
}
