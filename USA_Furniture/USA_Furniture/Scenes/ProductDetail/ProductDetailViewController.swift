//
//  ProductDetailViewController.swift
//  USA_Furniture
//
//  Created by student on 4/10/22.
//

import UIKit


class ProductDetailViewController: UIViewController {
    private let viewModel = ProductDetailViewModel()
    @IBOutlet private weak var productImageView: UIImageView!
    @IBOutlet private weak var descriptionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productImageView.image = UIImage(named: viewModel.imageName)
        descriptionTextView.text = viewModel.description
        title = viewModel.name
}
    
    func configure(with product: Product) {
        viewModel.configure(with: product)
    }

}
