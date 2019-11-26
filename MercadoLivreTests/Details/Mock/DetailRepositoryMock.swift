//
//  DetailRepositoryMock.swift
//  MercadoLivreTests
//
//  Created by Itamar Silva Lourenco on 25/11/19.
//  Copyright © 2019 Itamar Silva Lourenco. All rights reserved.
//

import UIKit

class DetailRepositoryMock: DetailRepositoryProtocol {
    
    var shouldFailRequest = false
    
    func fetchDetailData(id search: String, completion: @escaping (Result<ItemModel, Error>) -> ()) {
        if shouldFailRequest {
            completion(.failure(ApiError.Generic))
        } else {
            completion(.success(ItemModelMock.mock))
        }
    }

}
