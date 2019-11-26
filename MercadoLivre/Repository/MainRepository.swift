//
//  MainRepository.swift
//  MercadoLivre
//
//  Created by Itamar Silva Lourenco on 25/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit


protocol MainRepositoryProtocol: class {
    func fetchMainData(search: String, completion: @escaping (Result<SearchModel, Error>) -> ())
}

class MainRepository: MainRepositoryProtocol {
    func fetchMainData(search: String, completion: @escaping (Result<SearchModel, Error>) -> ()) {
        Api.shared.requestObject(endpoint: .search, params: search, completion: completion)
    }
}
