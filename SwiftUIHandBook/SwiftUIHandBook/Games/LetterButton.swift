//
//  LetterButton.swift
//  SwiftUIHandBook
//
//  Created by Ömer Faruk Öztürk on 2.01.2025.
//

import SwiftUI

struct LetterButtonGame: View {
    @State private var text = "The thief was arrested, but his accomplice managed to escape."
    @State private var keyword = "accomplice"
    @State private var selectedLetters: [LetterButton] = []
    @State private var allLetters: [LetterButton] = []
    
    var body: some View {
        VStack {
            Text(text.maskWord(keyword))
                .font(.title)
                .padding()
            
            HStack {
                ForEach(selectedLetters) { letter in
                    Text(letter.letter)
                        .font(.headline)
                        .frame(width: 40, height: 40)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                        .onTapGesture {
                            debugPrint("Selected letter: \(letter.letter)")
                            if let index = selectedLetters.firstIndex(where: { $0.id == letter.id }) {
                                selectedLetters.remove(at: index)
                                allLetters.append(letter)
                            }
                        }
                }
            }
            
            LetterButtonsView(letters: allLetters) { selectedLetter in
                debugPrint("Selected letter: \(selectedLetter.letter)")
                if let index = allLetters.firstIndex(where: { $0.id == selectedLetter.id }) {
                    selectedLetters.append(selectedLetter)
                    allLetters.remove(at: index)
                }
            }
        }
        .padding()
        .onAppear {
            if allLetters.isEmpty {
                allLetters = generateUniqueLetters()
            }
        }
    }
    
    private func generateUniqueLetters() -> [LetterButton] {
        var allLetters = keyword.uppercased().map { String($0) }

        while allLetters.count < keyword.count {
            let randomLetter = String(UnicodeScalar(Int.random(in: 65...90))!)
            allLetters.append(randomLetter)
        }

        return allLetters.map { LetterButton(letter: $0) }.shuffled()
    }
}

struct LetterButtonsView: View {
    let letters: [LetterButton]
    var onLetterTapped: (LetterButton) -> Void
    
    var body: some View {
        VStack(spacing: 10) {
            let rows = letters.chunked(into: 7)
            
            ForEach(rows, id: \.self) { row in
                HStack(spacing: 10) {
                    ForEach(row) { item in
                        Button(action: {
                            onLetterTapped(item)
                        }) {
                            Text(item.letter)
                                .font(.headline)
                                .frame(width: 40, height: 40)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(5)
                        }
                    }
                }
            }
        }
    }
}

struct LetterButton: Identifiable, Hashable {
    let id: UUID
    let letter: String
    
    init(id: UUID = UUID(), letter: String) {
        self.id = id
        self.letter = letter
    }
}

extension String {
    func maskWord(_ wordToMask: String) -> String {
        let underscores = String(repeating: "_ ", count: wordToMask.count).trimmingCharacters(in: .whitespaces)
        return self.replacingOccurrences(of: wordToMask, with: underscores)
    }
}

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        stride(from: 0, to: count, by: size).map {
            Array(self[$0..<Swift.min($0 + size, count)])
        }
    }
}
