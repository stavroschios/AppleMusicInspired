//
//  Search.swift
//  AppleMusicMiniPlayer
//
//  Created by Stavros Pachoundakis on 2021-11-23.
//

import SwiftUI

struct Library: View {
    @State var search = ""
    
    
    var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    
    var body: some View {
        
        
        ScrollView {
         
            VStack(spacing: 18) {
                HStack {
                    Text("Library")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.primary)
                
                        
                   

                    Spacer(minLength: 0)
                }
            }
            .padding(.bottom, 10)
                
            VStack(spacing: 10){
              
                    
                    ForEach(menus, id: \.id) {
                        menu in
                        HStack {
                        Text(menu.name)
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.red)
                            
                            Spacer(minLength: 0)
                            
                            
                        }
                    }
                   
                
                }
                
                
                // GridView of Songs
                LazyVGrid(columns: columns, spacing: 20) {
                  
                    ForEach(1...10, id: \.self) { index in
                        Image("p\(index)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        
                        // two side padding = 30
                        // spacing = 20
                        // total = 50
                            .frame(width: (UIScreen.main.bounds.width - 50) / 2, height: 180)
                            .cornerRadius(15)
                        
                    }
                }
                .padding(.top, 10)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing, content: {
                        Text("Edit")
                            .foregroundColor(Color.red)
                    })
                }
            
            }
            .padding()
            
            // padding miniplayer size as bottom
            .padding(.bottom, 80)
            
         
    }
}

struct Library_Previews: PreviewProvider {
    static var previews: some View {
        Library()
    }
}
