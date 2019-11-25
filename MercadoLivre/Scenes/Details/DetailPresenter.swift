//
//  DetailPresenter.swift
//  MercadoLivre
//
//  Created by Itamar Silva Lourenco on 24/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

protocol DetailPresenterProtocol {
    func prensetDetailData(response: ItemModel)
    func presentErrorAlert()
    func presentEmptyState()
    func showProgress()
    func hideProgress()
}

class DetailPresenter: DetailPresenterProtocol {
    
    var detailViewController: DetailViewControllerProtocol?
    
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
    
}
