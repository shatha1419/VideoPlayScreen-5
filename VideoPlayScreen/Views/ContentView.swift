//
//  ContentView.swift
//  VideoPlayScreen
//
//  Created by Nora Aldossary on 14/05/1445 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            TabView {
                // Assuming 'who()', 'Map()', and 'instrumentView()' are custom views
                
                    
                    Map()
                        .tabItem {
                            Image(systemName: "map")
                            Text("الخريطة")
                        }
                
                who()
                    .tabItem {
                        Image(systemName: "map")
                        Text("الخريطة")
                    }
                    
                    instrumentView()
                        .tabItem {
                            Image(systemName: "person")
                            Text("الملف الشخصي")
                        }
                }
            }
        }}
    
    #Preview {
        ContentView()
    }
    

