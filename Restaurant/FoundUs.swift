//
//  FoundUs.swift
//  Restaurant
//
//  Created by Nicolas Bugdaci on 04/05/2024.
//

import SwiftUI
import MapKit


struct FoundUs: View {
    
    let theBestRestaurant = CLLocationCoordinate2D(
        latitude: 56.156039227764055,
        longitude: 10.183344642389361)
    
    let distanceSpan: CLLocationDistance = 50000
    
    @State var camera: MapCameraPosition = .automatic
    
    var body: some View {
        Map(position: $camera) {
            Marker("The Best Place", systemImage: "fork.knife", coordinate: theBestRestaurant).tint(.blue)
        }.mapStyle(.imagery(elevation: .realistic))
    }
}

#Preview {
    FoundUs()
}
