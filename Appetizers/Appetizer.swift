//
//  Appetizer.swift
//  Appetizers
//
//  Created by Adam Gerber on 10/11/22.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData{
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Test",
                                           description: "This is the description",
                                           price: 12.99,
                                           imageURL: "",
                                           calories: 200,
                                           protein: 20,
                                           carbs: 30)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
