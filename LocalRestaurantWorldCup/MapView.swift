//
//  MapView.swift
//  LocalRestaurantWorldCup
//
//  Created by Martin on 2022/11/02.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.273109, longitude: 127.110196), latitudinalMeters: 100, longitudinalMeters: 100)
    
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $region)
                .navigationTitle("총각손칼국수")
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
