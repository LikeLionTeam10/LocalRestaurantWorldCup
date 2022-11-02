//
//  LocalRestaurantWorldCupApp.swift
//  LocalRestaurantWorldCup
//
//  Created by Martin on 2022/11/02.
//

import SwiftUI

@main
struct LocalRestaurantWorldCupApp: App {
    let environmentObject = RestaurantModelData()
   
    
    var body: some Scene {
        environmentObject.restaurants = loadJson("restaurantData.json")!
        return WindowGroup {
            ContentView().environmentObject(environmentObject)
        }
    }
}
