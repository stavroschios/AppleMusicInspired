//
//  AlbumView.swift
//  AppleMusicMiniPlayer
//
//  Created by Stavros Pachoundakis on 2021-11-23.
//

import SwiftUI

struct AlbumView: View {
    var edges = UIApplication.shared.windows.first?.safeAreaInsets
    @State var opacity: Double = 0
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    // First Parallel Scroll
                    GeometryReader { geo in
                        VStack {
                            Image("p1")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                // default width
                                .frame(width: UIScreen.main.bounds.width, height: geo.frame(in: .global).minY > 0 ? geo.frame(in: .global).minY + (UIScreen.main.bounds.height / 2.2) : UIScreen.main.bounds.height / 2.2)
                            // adjusting view position when scrolling
                                .offset(y: -geo.frame(in: .global).minY)
                            
                                // NavBar Change
                                .onChange(of: geo.frame(in: .global).minY) { value in
                                    // Checking if top is reached
                                    let offset = value + (UIScreen.main.bounds.height / 2.2)
                                    //Text("value: \(value)")
                                    if offset < 80 {
                                        // ranging from 0 - 80
                                        
                                        if offset > 0 {
                                            // Calculating opactiy
                                            let opacity_value = (80 - offset) / 80
                                            
                                            self.opacity = Double(opacity_value)
                                            
                                            return
                                        }
                                        
                                        self.opacity = 1
                                    } else {
                                        self.opacity = 0
                                    }
                                }
                        }
                    }
                    .frame(height: UIScreen.main.bounds.height / 2.2)
                    
                    // List of songs
                    VStack(spacing: 10) {
                        ForEach(albums, id: \.album_name) { album in
                            HStack(spacing: 10) {
                                Image("\(album.album_cover)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 55, height: 55)
                                    .cornerRadius(15)
                                
                                VStack(alignment: .leading, spacing: 5) {
                                    Text("\(album.album_name)")
                                    
                                    Text("\(album.album_author)")
                                        .font(.caption)
                                }
                                
                                Spacer(minLength: 0)
                            }
                            .padding(.horizontal)
                        }
                    }
                    .padding(.vertical)
                    .background(Color.white)
                }
            }
            
            HStack {
                Button(action: {}) {
                    HStack(spacing: 8) {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 22, weight: .bold))
                        
                        Text("Search")
                    }
                }
                
                Spacer(minLength: 0)
                
                Button(action: {}) {
                    Image("menu")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 22, height: 22)
                        .rotationEffect(Angle(degrees: 90))
                }
            }
            .padding()
            .foregroundColor(opacity > 0.6 ? .black : .white)
            // since top edges are ignored
            .padding(.top, edges!.top)
            .background(Color.white.opacity(opacity))
            .shadow(color: Color.black.opacity(opacity > 0.8 ? 0.1 : 0), radius: 5, x: 0, y: 5)
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}
