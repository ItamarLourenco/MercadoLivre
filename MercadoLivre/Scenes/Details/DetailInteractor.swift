//
//  DetailsInteractor.swift
//  MercadoLivre
//
//  Created by Itamar Silva Lourenco on 24/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

protocol DetailInteractorProtocol : class{
    func fetchDetailData(id: String)
}

class DetailInteractor: DetailInteractorProtocol {
    
    var presenter: DetailPresenterProtocol? = nil
    var repository:DetailRepositoryProtocol = DetailRepository()


    func fetchDetailData(id: String) {
        self.presenter?.showProgress()
        repository.fetchDetailData(id: id) { [weak self] (response: Result<ItemModel, Error>) in
            self?.presenter?.hideProgress()
            do {
                let results = try response.get()
                self?.handleResult(itemModel: results)
            } catch {
                self?.presenter?.presentErrorAlert()
            }
        }
    }
    
    func handleResult(itemModel: ItemModel) {
        self.presenter?.prensetDetailData(response: itemModel)
        
        DispatchQueue.main.async {
            self.presenter?.setImageView(from: itemModel.pictures?.first?.secure_url ?? "")
            self.presenter?.setPrice(price: itemModel.price ?? 0.0)
            self.presenter?.setProductTitle(title: itemModel.title ?? "")
            self.presenter?.setDesc(desc: itemModel.title ?? "")
        }
    }
}
