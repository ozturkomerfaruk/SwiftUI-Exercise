//
//  ContentView.swift
//  SwiftUIExercise
//
//  Created by Ömer Faruk Öztürk on 22.12.2024.
//

import SwiftUI

struct ContentView: View {
    @State var users = [User]()
    @State var products = [Product]()
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(users, id: \.id) { user in
                    Text(user.firstName ?? "")
                }
                
                ForEach(products, id: \.id) { user in
                    Text(user.title ?? "")
                        .foregroundStyle(.spotifyGreen)
                }
            }
        }
        .padding()
        .task {
            await getData()
        }
    }
    
    private func getData() async {
        do {
            users = try await DatabaseHelper().getUsers()
            products = try await DatabaseHelper().getProducts()
        } catch {
            
        }
    }
}

#Preview {
    ContentView()
}
