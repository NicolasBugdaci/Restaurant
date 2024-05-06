//
//  GalleryView.swift
//  Restaurant
//
//  Created by Nicolas Bugdaci on 04/05/2024.
//

import SwiftUI

struct GalleryView: View {
    
    @State var photoData = [String]()
    @State var sheetVisible = false
    @State var selectedPhoto = ""
    var dataService = DataService()
    
    
    var body: some View {
        
        VStack (alignment: .leading) {
            Text("Gallery")
                .font(.largeTitle)
                .bold()
            
            GeometryReader { proxy in
                ScrollView (showsIndicators: false) {
                    LazyVGrid(columns: [GridItem(spacing: 10),
                                        GridItem(spacing: 10),
                                        GridItem(spacing: 10)], spacing: 10) {
                        ForEach(photoData, id: \.self) { p in
                            Image(p)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: (proxy.size.width-20)/3)
                                .clipped()
                                .onTapGesture {
                                    selectedPhoto = p
                                    sheetVisible = true
                                }
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
        .onAppear {
            photoData = dataService.getPhotos()
        }.sheet(isPresented: $sheetVisible){
            PhotoView(selectedPhoto: $selectedPhoto,
                      sheetVisible: $sheetVisible)
        }
        
        
        
    }
}

#Preview {
    GalleryView()
}
