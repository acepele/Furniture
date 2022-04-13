//
//  Order.swift
//  USA_Furniture
//
//  Created by student on 4/10/22.
//

import Foundation

struct Order {
    var products: [Product]
    var total: Double {
        return products.reduce(0.0) { $0 +  $1.price }
    }
    var formattedTotal: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter.string(from: NSNumber(value: total))  ?? "$0.00"
        
    }
}
