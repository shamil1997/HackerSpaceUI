//
//  ContentView.swift
//  H4ckerNews
//
//  Created by Iris Medical Solutions on 20/05/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
   @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink {
                    DetailView(url: post.url)
                } label: {
                    HStack {
                        Text(post.title)
                        Text(String(post.points))
                    }

                    Text("show detail")
                }
            }
            .navigationTitle("hacker News")
        }
        .onAppear(perform: networkManager.fetchData)
        }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
