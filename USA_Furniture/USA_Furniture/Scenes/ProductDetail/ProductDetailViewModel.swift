//
//  ProductDetailViewModel.swift
//  USA_Furniture
//
//  Created by student on 4/10/22.
//

import Foundation

final class ProductDetailViewModel {
  var name: String { return product?.name ?? "No product"}
  var imageName: String { return product?.imageName ?? "" }
  var description: String { return product?.description ?? "" }
  private var product: Product?
  
  func configure(with product: Product) {
    self.product = product
  }
}
