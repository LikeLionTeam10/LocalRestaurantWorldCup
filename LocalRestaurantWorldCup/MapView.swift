//
//  MapView.swift
//  LocalRestaurantWorldCup
//
//  Created by Martin on 2022/11/02.
//

import SwiftUI
import MapKit

struct MapView: View {
    @EnvironmentObject var restaurantModelData: RestaurantModelData
    
    
    
    @Binding var restaurant: Restaurant
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 32, longitude: 125), latitudinalMeters: 100, longitudinalMeters: 100)
    
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $region)
                .navigationTitle(restaurant.name)
        }.onAppear {
            setLocation()
        }
    }
    
    private func setLocation() {
        //위도 경도 뒤집어서 인자에 할당해야함!
        region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: restaurant.coordinates.longitude , longitude: restaurant.coordinates.latitude), latitudinalMeters: 100, longitudinalMeters: 100)
        print(restaurant.coordinates.longitude)
        print(restaurant.coordinates.latitude)
    }
}

