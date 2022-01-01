//
//  ContentView.swift
//  Tech News
//
//  Created by matthew savidge on 12/31/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)){
                    HStack {
                        
                        Text(String(post.points))
                        Text(post.title )
                    }
                }
                
            }
            .navigationTitle("Tech News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

