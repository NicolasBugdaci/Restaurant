//
//  DataService.swift
//  Menu
//
//  Created by Nicolas Bugdaci on 03/05/2024.
//

import Foundation

struct DataService {
    
    func getData () -> [MenuItem] {
        return [MenuItem(name: "Onigiri", price: "14", imageName:"onigiri"),
                MenuItem(name: "Meguro Sushi", price: "12", imageName: "meguro-sushi"),
                MenuItem(name: "Tako Sushi", price: "10", imageName: "tako-sushi"),
                MenuItem(name: "Avocado Maki", price: "10", imageName: "avocado-maki"),
                MenuItem(name: "Tobiko Spicy Maki", price: "10", imageName: "tobiko-spicy-maki"),
                MenuItem(name: "Salmon Sushi", price: "10", imageName: "salmon-sushi"),
                MenuItem(name: "Hamachi Sushi", price: "12", imageName: "hamachi-sushi"),
                MenuItem(name: "Kani Sushi", price: "10", imageName: "kani-sushi"),
                MenuItem(name: "Tamago Sushi", price: "14", imageName: "tamago-sushi"),
                MenuItem(name: "California Roll", price: "12", imageName: "california-roll"),
                MenuItem(name: "Shrimp Sushi", price: "10", imageName: "shrimp-sushi"),
                MenuItem(name: "Ikura Sushi", price: "10", imageName: "ikura-sushi")]
    }
    
    func getPhotos() -> [String] {
        return ["gallery1", "gallery2", "gallery3", "gallery4", "gallery5", "gallery6", "gallery7", "gallery8", "gallery9", "gallery10", "gallery11"]
    }
}
