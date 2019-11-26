//
//  DetailPresenter.swift
//  MercadoLivre
//
//  Created by Itamar Silva Lourenco on 24/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

protocol DetailPresenterProtocol: class {
    func prensetDetailData(response: ItemModel)
    func presentErrorAlert()
    func presentEmptyState()
    func showProgress()
    func hideProgress()
    func setImageView(from: String)
    func setProductTitle(title: String)
    func setDesc(desc: String)
    func setPrice(price: String)
}

class DetailPresenter: DetailPresenterProtocol {
    
    weak var detailViewController: DetailViewControllerProtocol?
    
    func prensetDetailData(response: ItemModel) {
        detailViewController?.displayDetailData(response: response)
    }
    
    func presentErrorAlert() {
        detailViewController?.displayErrorAlert()
    }
    
    func showProgress(){
        detailViewController?.showProgress()
    }
    
    func hideProgress(){
        detailViewController?.hideProgress()
    }
    
    func presentEmptyState(){
        detailViewController?.displayEmptyState()
    }
    
    func setImageView(from: String) {
        detailViewController?.setImageView(from: from)
    }
    
    func setProductTitle(title: String) {
        detailViewController?.setProductTitle(title: title)
    }
    
    func setDesc(desc: String) {
        detailViewController?.setDesc(desc: desc)
    }
    
    func setPrice(price: String) {
        detailViewController?.setPrice(price: price)
    }
}
