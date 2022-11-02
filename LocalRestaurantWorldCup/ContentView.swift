//
//  ContentView.swift
//  LocalRestaurantWorldCup
//
//  Created by Martin on 2022/11/02.
//

import SwiftUI

//탭뷰로 만든다
    //2. 이상형월드컵 -> 조금 나중에

    //1. 맛집리스트가 다 있고
    //각각의 내비게이션뷰에서 맵확인

struct ContentView: View {
    var body: some View {
        TabView {
            Text("맛집월드컵").tabItem {
                Image(systemName: "flag.checkered.2.crossed")
                Text("맛집월드컵")
            }.tag(1)
            
            Text("맛집리스트").tabItem {
                Image(systemName: "map.fill")
                Text("맛집리스트")
            }.tag(2)
            
           
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
