//
//  MainRepository.swift
//  MercadoLivre
//
//  Created by Itamar Silva Lourenco on 25/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

 
protocol DetailRepositoryProtocol {
    func fetchDetailData(id: String, completion: @escaping (Result<ItemModel, Error>) -> ())
}

struct DetailRepository: DetailRepositoryProtocol {
    func fetchDetailData(id: String, completion: @escaping (Result<ItemModel, Error>) -> ()) {
        Api.shared.requestObject(endpoint: .item, params: id, completion: completion)
    }
}
