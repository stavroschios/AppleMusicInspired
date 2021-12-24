//
//  TabBar.swift
//  AppleMusicMiniPlayer
//
//  Created by Stavros Pachoundakis on 2021-11-23.
//
import SwiftUI

struct TabBar: View {
    // Selected Tab Index
    // Default is third
    @State var current = 2
    
    // Miniplayer Properties
    @State var expand = false
    
    @Namespace var animation
    
    var body: some View {
        // Bottom Mini Player
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            TabView(selection: $current) {
                Library()
                    .tag(0)
                    .tabItem {
                        Image(systemName: "rectangle.stack.fill")
                        
                        Text("Library")
                    }
                
                Text("Radio")
                    .tag(1)
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        
                        Text("Radio")
                    }
                
                Search()
                    .tag(2)
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        
                        Text("Search")
                    }
            }
            
            Miniplayer(animation: animation, expand: $expand)
        }
    }
}
