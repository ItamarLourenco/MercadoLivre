//
//  MainRepository.swift
//  MercadoLivre
//
//  Created by Itamar Silva Lourenco on 23/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

protocol MainRepositoryProtocol {
    func fetchMainItens(data: MainModels.MainRequestModel,
                        completion: @escaping (Result<SearchModel, Error>) -> ())
}

class MainRepository: MainRepositoryProtocol {
    func fetchMainItens(data: MainModels.MainRequestModel, completion: @escaping (Result<SearchModel, Error>) -> ()) {
        
    
        Api.shared.requestObject(search: "") { (response: Result<SearchModel, Error>) in
            switch response {
            case .success(let movies):
                completion(.success(movies))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
