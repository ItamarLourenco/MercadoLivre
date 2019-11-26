//
//  MainInteractor.swift
//  MercadoLivre
//
//  Created by Itamar Silva Lourenco on 23/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

protocol MainInteractorProtocol: class {
    func fetchMainData(search: String)
}

class MainInteractor: MainInteractorProtocol {
    
    var presenter: MainPresenterPrococol? = nil
    var repository: MainRepositoryProtocol = MainRepository()

    func fetchMainData(search: String) {
        self.presenter?.presentShowProgress()
        
        
        repository.fetchMainData(search: search) { [weak self] (response: Result<SearchModel, Error>) in
            self?.presenter?.presentHideProgress()
            do {
                let results = try response.get()
                
                if results.results!.count > 0 {
                    self?.presenter?.prensetMainData(response: results)
                } else {
                    self?.presenter?.presentEmptyState()
                }
                
            } catch {
                self?.presenter?.presentErrorAlert()
            }
        }
        
        
    }
    
}
