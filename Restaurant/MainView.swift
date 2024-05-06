//
//  MainView.swift
//  Restaurant
//
//  Created by Nicolas Bugdaci on 04/05/2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        TabView {
            
            MenuView().tabItem {
                VStack{
                    Image(systemName: "menucard")
                    Text("Menu")
                    
                }
            }
            
            FoundUs().tabItem {
                VStack{
                    Image(systemName: "mappin.circle.fill")
                    Text("Found Us")
                    
                }
            }
            
            GalleryView().tabItem {
                VStack{
                    Image(systemName: "photo")
                    Text("Gallery")
                    
                }
            }
            
        }
        
        
    }
}

#Preview {
    MainView()
}
