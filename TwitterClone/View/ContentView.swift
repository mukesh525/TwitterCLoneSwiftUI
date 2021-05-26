//
//  ContentView.swift
//  TwitterClone
//
//  Created by Mukesh Jha on 24/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            TabView{
                FeedView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                        
                    }
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                        
                    }
                ConversationVew() 
                    .tabItem {
                        Image(systemName: "envelope")
                        Text("Message")
                        
                    }
            }
            .navigationBarTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
