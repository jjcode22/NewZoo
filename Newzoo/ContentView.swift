//
//  ContentView.swift
//  Newzoo
//
//  Created by JJ on 21/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationView {
                List(Posts){
                    post in
                    Text(post.title)
                }
                .navigationTitle("📰NewZoo")
            }
     
    }
}

struct Post: Identifiable {
    let id: Int
    let title: String
}

let Posts = [Post(id: 1, title: "Namaste"),Post(id: 2, title: "Bonjour"),Post(id: 3, title: "Ni Hao")]

#Preview {
    ContentView()
}
