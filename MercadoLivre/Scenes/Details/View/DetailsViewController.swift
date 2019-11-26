//
//  DetailsViewController.swift
//  MercadoLivre
//
//  Created by Itamar Silva Lourenco on 24/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

protocol DetailViewControllerProtocol: class {
    func displayDetailData(response: ItemModel)
    func displayErrorAlert()
    func displayEmptyState()
    func showProgress()
    func hideProgress()
    func setImageView(from: String)
    func setProductTitle(title: String)
    func setDesc(desc: String)
    func setPrice(price: String)
}

class DetailsViewController: BaseViewController {
    
    var interactor: DetailInteractorProtocol?
    var id:String = ""
    var itemModel: ItemModel?
    @IBOutlet weak var buttonShared: UIButton!
    @IBOutlet weak var buttonClose: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var indicatorView: UIActivityIndicatorView!
    @IBOutlet weak var stackViewButton: UIStackView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        handleViewButtons()

        interactor?.fetchDetailData(id: self.id)
    }


    func handleViewButtons() {
        buttonShared.layer.cornerRadius = 5
        buttonClose.layer.cornerRadius = 5
    }
    

    @IBAction func closeViewController(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func sharedButton(_ sender: Any) {
        present(UIActivityViewController(activityItems: [itemModel?.permalink ?? ""], applicationActivities: nil), animated: true)
    }
}


extension DetailsViewController: DetailViewControllerProtocol{
    
    func displayDetailData(response: ItemModel) {
        self.itemModel = response
    }
    
    func setImageView(from: String) {
        self.imageView.load(from: from)
    }
    
    func setProductTitle(title: String) {
        self.productTitle.text = title
    }
    
    func setDesc(desc: String) {
        self.desc.text = desc
    }
    
    func setPrice(price: String) {
        self.price.text = price
    }
    
    func displayErrorAlert() {
        showScreenError()
    }
    
    func displayEmptyState() {
        showEmptyState()
    }
    
    func showProgress() {
        DispatchQueue.main.async {
            self.indicatorView.startAnimating()
            self.imageView.isHidden = true
            self.productTitle.isHidden = true
            self.desc.isHidden = true
            self.price.isHidden = true
            self.stackViewButton.isHidden = true
        }
    }
    
    func hideProgress() {
        DispatchQueue.main.async {
            self.indicatorView.stopAnimating()
            self.imageView.isHidden = false
            self.productTitle.isHidden = false
            self.desc.isHidden = false
            self.price.isHidden = false
            self.stackViewButton.isHidden = false
        }
    }
    
    
}
