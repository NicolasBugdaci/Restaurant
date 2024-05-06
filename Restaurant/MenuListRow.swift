//
//  MenuListRow.swift
//  Menu
//
//  Created by Nicolas Bugdaci on 03/05/2024.
//

import SwiftUI

struct MenuListRow: View {
    
    var item: MenuItem
    
    var body: some View {
        HStack {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .cornerRadius(10)
            Text(item.name)
                .bold()
            Spacer()
            Text(item.price + " kr.")
        }.listRowSeparator(.hidden)
            .listRowBackground(
                Color(.brown)
                    .opacity(0.1))    }
}

#Preview {
    MenuListRow(item: MenuItem(name: "test item", price: "10", imageName: "tako-sushi"))
}
