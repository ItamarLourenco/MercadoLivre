//
//  MainInteractor.swift
//  MercadoLivre
//
//  Created by Itamar Silva Lourenco on 23/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

protocol MainInteractorProtocol {
    func fetchMainData(search: String)
}

class MainInteractor: MainInteractorProtocol {
    
    var presenter: MainPresenterPrococol? = nil
    var repository: MainRepositoryProtocol = MainRepository()

    
    func fetchMainData(search: String) {
        
        self.presenter?.showProgress()
        Api.shared.requestObject(search: search) { (response: Result<SearchModel, Error>) in
            self.presenter?.hideProgress()
            do {
                let results = try response.get()
                self.presenter?.prensetMainData(response: results)
            } catch {
                print(response)
            }
            
        }
        
        
    }
    
}
