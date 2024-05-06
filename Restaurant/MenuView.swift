//
//  MenuView.swift
//  Restaurant
//
//  Created by Nicolas Bugdaci on 04/05/2024.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems:[MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        VStack {
            List(menuItems) { item in
                
                MenuListRow(item: item)
                
            }.listStyle(.plain)
                .onAppear(perform: {
                    menuItems = dataService.getData()
                })        }
    }
}

#Preview {
    MenuView()
}
