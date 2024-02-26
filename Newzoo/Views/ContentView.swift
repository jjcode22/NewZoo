//
//  ContentView.swift
//  Newzoo
//
//  Created by JJ on 21/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
            NavigationView {
                List(networkManager.posts){
                    post in
                    NavigationLink {
                        DetailView(url: post.url)
                    } label: {
                        HStack {
                            Text("🔺\(post.points)")
                            Text(post.title)
                        }
                    }
                }
                .navigationTitle("📰NewZoo")
            }
            .onAppear() {
                self.networkManager.getData()
            }
     
    }
    
}


let Posts = [ Post(objectID: "123", points: 123, title: "hello", url: "asdjla"), Post(objectID: "23", points: 123, title: "angela", url: "asdjla")]

#Preview {
    ContentView()
}
