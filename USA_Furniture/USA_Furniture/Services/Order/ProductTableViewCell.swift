//
//  ProductTableViewCell.swift
//  USA_Furniture
//
//  Created by student on 4/10/22.
//

import UIKit

struct ProductViewModel {
  let name: String
  let price: String
  let imageName: String
}

class ProductTableViewCell: UITableViewCell {

    @IBOutlet private weak var productImageView: UIImageView!
    
    @IBOutlet private weak var nameLabel: UILabel!
    
    @IBOutlet private weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        productImageView.image = nil
        nameLabel.text = nil
        priceLabel.text = nil
      }
      
      func configure(with viewModel: ProductViewModel) {
        productImageView.image = UIImage(named: viewModel.imageName)
        nameLabel.text = viewModel.name
        priceLabel.text = viewModel.price
      }
    
}
    

