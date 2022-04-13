//
//  Products.swift
//  USA_Furniture
//
//  Created by student on 4/10/22.
//

import Foundation

struct Product {
    let name: String
    let price: Double
    let imageName: String
    let description: String
    
    var formattedPrice: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter.string(from: NSNumber(value: price))  ?? "$0.00"
    }
    
}
