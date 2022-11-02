//
//  RestaurantWorldCupView.swift
//  LocalRestaurantWorldCup
//
//  Created by Martin on 2022/11/02.
//

import SwiftUI

//몇강인지 정보
// 세로로 등분해서 사진 보여줌
// 16개의 정보를 다 가져오고 랜덤으로 두 개씩 보여준다.
//[1, 2, 3, 4]
//[2, 4, 3, 1]
//[3, 1, 2]
//[2, 3]
//[2]... 최종선택 끝
// 선택한것만 따로 담는 배열을 만든다 -> 원래 배열에 들어있는 요소를 삭제하지 않기 위해서
//[2, 4]


struct RestaurantWorldCupView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct RestaurantWorldCupView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantWorldCupView()
    }
}
