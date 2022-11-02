//
//  RestaurantListView.swift
//  LocalRestaurantWorldCup
//
//  Created by Martin on 2022/11/02.
//

import SwiftUI

//맛집리스트가 우선적으로 나오고
//추천한 사람을 기준으로 두개씩 들어가게 섹션
//리스트에는 도시정보, 사진, 이름

//맛집리스트를 클릭하면 맵으로

//json 받아오면

struct RestaurantListView: View {
    
    @EnvironmentObject var restaurantModelData: RestaurantModelData
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach($restaurantModelData.restaurants) { $restaurant in
                    NavigationLink {
                        MapView(restaurant: $restaurant)
                    } label: {
                        Text(restaurant.name)
                    }
                }
            }
        }
    }
}

//struct RestaurantListView_Previews: PreviewProvider {
//
//    static var previews: some View {
//        RestaurantListView().environmentObject()
//    }
//}
