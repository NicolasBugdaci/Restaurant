//
//  MenuItem.swift
//  Menu
//
//  Created by Nicolas Bugdaci on 03/05/2024.
//

import Foundation

struct MenuItem: Identifiable {
    var id: UUID = UUID()
    var name:String
    var price:String
    var imageName:String
}
