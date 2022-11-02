//
//  GetRestaurantData.swift
//  LocalRestaurantWorldCup
//
//  Created by Martin on 2022/11/02.
//

import Foundation
import Combine

final class RestaurantModelData: ObservableObject {
    @Published var restaurants: [Restaurant] = []
}

func loadJson(_ filename: String) -> [Restaurant]? {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename,
                                     withExtension: nil)
    else {
        fatalError("\(filename) not found.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Could not load \(filename): (error)")
    }
    
    do {
        return try JSONDecoder().decode([Restaurant].self, from: data)
    } catch {
        fatalError("Unable to parse \(filename): (error)")
    }
}

//func load<T: Decodable>(_ filename: String) -> T {
//    let data: Data
//
//    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
//        else {
//            fatalError("Couldn't find \(filename) in main bundle.")
//    }
//
//    do {
//        data = try Data(contentsOf: file)
//    } catch {
//        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
//    }
//
//    do {
//        let decoder = JSONDecoder()
//        return try decoder.decode(T.self, from: data) as T
//    } catch {
//        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
//    }

