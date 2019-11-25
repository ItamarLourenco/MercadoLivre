//
//  DetailsInteractor.swift
//  MercadoLivre
//
//  Created by Itamar Silva Lourenco on 24/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

protocol DetailInteractorProtocol {
    func fetchDetailData(id: String)
}

class DetailInteractor: DetailInteractorProtocol {
    
    var presenter: DetailPresenterProtocol? = nil

    func fetchDetailData(id: String) {
        self.presenter?.showProgress()
        Api.shared.requestObject(endpoint: .item, params: id) { (response: Result<ItemModel, Error>) in
            self.presenter?.hideProgress()
            do {
                let results = try response.get()
                self.presenter?.prensetDetailData(response: results)
            } catch {
                self.presenter?.presentErrorAlert()
            }
        }
    }
}
